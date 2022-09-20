local window = require 'lsp.user.window'
local libs = require 'lsp.user.libs'

local max_preview_lines = 200

local send_request = function(method)
  local params = vim.lsp.util.make_position_params()
  params.context = { includeDeclaration = true }
  local response = vim.lsp.buf_request_sync(0, method, params, 1000)

  if type(response) == 'table' then
    for _, res in pairs(response) do
      if res.result then
        coroutine.yield(res.result)
      end
    end
  end
end

local Finder = {}

local uv = vim.loop

function Finder:lsp_finder_request(method)
  return uv.new_async(vim.schedule_wrap(function()
    local root_dir = libs.get_lsp_root_dir()
    if string.len(root_dir) == 0 then
      print '[LspSaga] get root dir failed'
      return
    end
    self.WIN_WIDTH = vim.fn.winwidth(0)
    self.WIN_HEIGHT = vim.fn.winheight(0)
    self.contents = {}
    self.short_link = {}
    self.uri = 0

    -- local request_intance = coroutine.create(send_request)
    local request_intance = coroutine.create(function()
      send_request(method)
    end)
    self.buf_filetype = vim.api.nvim_buf_get_option(0, 'filetype')

    local has_result = false
    while true do
      local _, result = coroutine.resume(request_intance)
      self:create_finder_contents(result, root_dir)

      if coroutine.status(request_intance) == 'dead' then
        break
      end

      has_result = true
    end

    if not has_result then
      print 'not result'
      return
    end

    self:render_finder_result()
  end))
end

function Finder:create_finder_contents(result, root_dir)
  local home_dir = os.getenv 'HOME'
  local target_lnum = 1
  if type(result) == 'table' then
    local params = vim.fn.expand '<cword>'
    self.param_length = #params

    self.uri = result.saga_msg and 1 or #result
    if result.saga_msg then
      table.insert(self.contents, result.saga_msg)
      return
    end

    for index, _ in ipairs(result) do
      local uri = result[index].targetUri or result[index].uri
      if uri == nil then
        return
      end
      local bufnr = vim.uri_to_bufnr(uri)
      if not vim.api.nvim_buf_is_loaded(bufnr) then
        vim.fn.bufload(bufnr)
      end
      local link = vim.uri_to_fname(uri) -- returns lowercase drive letters on Windows
      local short_name

      -- reduce filename length by root_dir or home dir
      if link:find(root_dir, 1, true) then
        short_name = link:sub(root_dir:len() + 2)
      elseif link:find(home_dir, 1, true) then
        short_name = link:sub(home_dir:len() + 2)
        -- some definition still has a too long path prefix
        if #short_name > 40 then
          short_name = libs.split_by_pathsep(short_name, 4)
        end
      else
        short_name = libs.split_by_pathsep(link, 4)
      end

      local range = result[index].targetSelectionRange or result[index].targetRange or result[index].range
      local target_line = '[' .. index .. ']' .. ' ' .. short_name .. ' :' .. range.start.line + 1
      table.insert(self.contents, target_line)

      local lines = vim.api.nvim_buf_get_lines(bufnr, 0, range['end'].line + 10000, false)

      self.short_link[target_lnum] = {
        link = link,
        preview = lines,
        row = range.start.line + 1,
        col = range.start.character + 1,
      }

      target_lnum = target_lnum + 1
    end
  end
end

function Finder:render_finder_result()
  if next(self.contents) == nil then
    return
  end

  if #self.contents == 1 and self.short_link[1] ~= nil then
    vim.api.nvim_command('edit' .. self.short_link[1].link)
    vim.fn.cursor(self.short_link[1].row, self.short_link[1].col)
    return
  end

  -- get dimensions
  local width = vim.api.nvim_get_option 'columns'
  local height = vim.api.nvim_get_option 'lines'

  -- calculate our floating window size
  local win_height = math.ceil(height * 0.8)
  local win_width = math.ceil(width * 0.8)

  -- and its starting position
  local row = math.ceil((height - win_height) * 0.7)
  local col = math.ceil((width - win_width))
  local opts = {
    style = 'minimal',
    relative = 'editor',
    row = row,
    col = col,
  }

  local max_height = math.ceil((height - 4) * 0.5)
  if #self.contents > max_height then
    opts.height = max_height
  end

  if #self.contents < 30 then
    opts.height = 30
  end

  local content_opts = {
    contents = self.contents,
    filetype = 'LspsagaFinder',
    enter = true,
    highlight = 'LspSagaLspFinderBorder',
  }

  self.bufnr, self.winid = window.create_win_with_border(content_opts, opts)
  vim.api.nvim_buf_set_option(self.contents_buf or 0, 'buflisted', false)
  vim.api.nvim_win_set_var(self.conents_win or 0, 'lsp_finder_win_opts', opts)
  vim.api.nvim_win_set_option(self.conents_win or 0, 'cursorline', true)

  if not self.cursor_line_bg and not self.cursor_line_fg then
    self:get_cursorline_highlight()
  end
  vim.api.nvim_command 'highlight! link CursorLine LspSagaFinderSelection'
  vim.api.nvim_command "autocmd CursorMoved <buffer> lua require('lsp.user.execute').auto_open_preview()"
  vim.api.nvim_command "autocmd QuitPre <buffer> lua require('lsp.user.execute').close_lsp_finder_window()"

  for i = 0, self.uri, 1 do
    vim.api.nvim_buf_add_highlight(self.contents_buf or 0, -1, 'TargetFileName', i, 0, -1)
  end

  self:apply_float_map()
end

function Finder:apply_float_map()
  local lhs = { noremap = true, silent = true }
  local map = vim.api.nvim_buf_set_keymap

  for _, mode in ipairs { 'o', '<cr>' } do
    map(self.bufnr, 'n', mode, ":lua require'lsp.user.execute'.open_link(1)<CR>", lhs)
  end
  map(self.bufnr, 'n', 's', ":lua require'lsp.user.execute'.open_link(2)<CR>", lhs)
  map(self.bufnr, 'n', 'i', ":lua require'lsp.user.execute'.open_link(3)<CR>", lhs)

  for _, mode in ipairs { 'q', '<esc>' } do
    map(self.bufnr, 'n', mode, ":lua require'lsp.user.execute'.close_lsp_finder_window()<CR>", lhs)
  end
end

function Finder:get_cursorline_highlight()
  self.cursor_line_bg = vim.fn.synIDattr(vim.fn.hlID 'cursorline', 'bg')
  self.cursor_line_fg = vim.fn.synIDattr(vim.fn.hlID 'cursorline', 'fg')
end

function Finder:auto_open_preview()
  local current_line = vim.fn.line '.'
  if not self.short_link[current_line] then
    return
  end
  local content = self.short_link[current_line].preview or {}

  if next(content) ~= nil then
    local has_var, finder_win_opts = pcall(vim.api.nvim_win_get_var, 0, 'lsp_finder_win_opts')
    if not has_var then
      print 'get finder window options wrong'
      return
    end
    local opts = {
      relative = 'editor',
      no_size_override = true,
    }

    local finder_width = vim.fn.winwidth(0)
    local finder_height = vim.fn.winheight(0)
    local screen_width = vim.api.nvim_get_option 'columns'

    local content_width = 0
    for _, line in ipairs(content) do
      content_width = math.max(vim.fn.strdisplaywidth(line), content_width)
    end

    local border_width = 2

    local max_width = screen_width - finder_win_opts.col - finder_width - border_width - 2

    if max_width > 42 then
      -- Put preview window to the right of the finder window
      local preview_width = math.min(content_width + border_width, max_width)
      opts.col = finder_win_opts.col + finder_width + 2
      opts.row = finder_win_opts.row
      opts.width = preview_width
      opts.height = self.uri + 6
      if opts.height > finder_height then
        opts.height = finder_height
      end
    else
      local max_height = self.WIN_HEIGHT - finder_win_opts.row - finder_height - border_width - 2
      if max_height <= 3 then
        return
      end

      opts.row = finder_win_opts.row + finder_height + 2
      opts.col = finder_win_opts.col
      opts.width = finder_width
      opts.height = math.min(8, max_height)
    end

    if opts.height < 30 then
      opts.height = 30
    end

    local content_opts = {
      contents = content,
      filetype = self.buf_filetype,
      highlight = 'LspSagaAutoPreview',
      row = self.short_link[current_line].row,
      col = self.short_link[current_line].col,
    }

    vim.defer_fn(function()
      self:close_auto_preview_win()
      local bufnr, winid = window.create_win_with_border(content_opts, opts)
      vim.api.nvim_buf_set_option(bufnr, 'buflisted', false)
      vim.api.nvim_win_set_var(0, 'saga_finder_preview', { winid, 1, max_preview_lines + 1 })
    end, 10)
  end
end

function Finder:close_auto_preview_win()
  local has_var, pdata = pcall(vim.api.nvim_win_get_var, 0, 'saga_finder_preview')
  if has_var then
    window.nvim_close_valid_window(pdata[1])
  end
end

-- action 1 mean enter
-- action 2 mean vsplit
-- action 3 mean split
function Finder:open_link(action_type)
  local action = { 'edit ', 'vsplit ', 'split ' }
  local current_line = vim.fn.line '.'

  if self.short_link[current_line] == nil then
    error '[LspSaga] target file uri not exist'
    return
  end

  self:close_auto_preview_win()
  vim.api.nvim_win_close(self.winid, true)
  vim.api.nvim_command(action[action_type] .. self.short_link[current_line].link)
  vim.fn.cursor(self.short_link[current_line].row, self.short_link[current_line].col)
  self:clear_tmp_data()
end

function Finder:quit_float_window()
  self:close_auto_preview_win()
  if self.winid ~= 0 then
    window.nvim_close_valid_window(self.winid)
  end
  self:clear_tmp_data()
end

function Finder:clear_tmp_data()
  self.short_link = {}
  self.contents = {}
  self.uri = 0
  self.param_length = 0
  self.buf_filetype = ''
  self.WIN_HEIGHT = 0
  self.WIN_WIDTH = 0
  if self.cursor_line_bg ~= '' then
    vim.api.nvim_command('hi! CursorLine  guibg=' .. self.cursor_line_bg)
  end
  if self.cursor_line_fg == '' then
    vim.api.nvim_command 'hi! CursorLine  guifg=NONE'
  end
end

local M = {}

function M.execute(method)
  local active, msg = libs.check_lsp_active()
  if not active then
    print(msg)
    return
  end
  local async_finder = Finder:lsp_finder_request(method)
  async_finder:send()
end

function M.close_lsp_finder_window()
  Finder:quit_float_window()
end

function M:auto_open_preview()
  Finder:auto_open_preview()
end

function M.open_link(action_type)
  Finder:open_link(action_type)
end

return M
