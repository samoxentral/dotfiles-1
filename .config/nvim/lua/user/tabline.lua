local devicons_status, devicons = pcall(require, 'nvim-web-devicons')

local api = vim.api
local fn = vim.fn
local new_cmd = api.nvim_create_user_command

---------------------------------------------------------- commands ------------------------------------------------------------
new_cmd('Tbufnext', function()
  require('user.tab-utils').tabuflineNext()
end, {})

new_cmd('Tbufprev', function()
  require('user.tab-utils').tabuflinePrev()
end, {})

new_cmd('Tbufclose', function()
  require('user.tab-utils').close_buffer()
end, {})

-------------------------------------------------------- functions ------------------------------------------------------------
local function new_hl(group1, group2)
  local fg = fn.synIDattr(fn.synIDtrans(fn.hlID(group1)), 'fg#')
  local bg = fn.synIDattr(fn.synIDtrans(fn.hlID(group2)), 'bg#')
  api.nvim_set_hl(0, 'Tbline' .. group1 .. group2, { fg = fg, bg = bg })
  return '%#' .. 'Tbline' .. group1 .. group2 .. '#'
end

local function getNvimTreeWidth()
  for _, win in pairs(api.nvim_tabpage_list_wins(0)) do
    if vim.bo[api.nvim_win_get_buf(win)].ft == 'NvimTree' then
      return api.nvim_win_get_width(win) + 1
    end
  end
  return 0
end

local function getBtnsWidth()
  local width = 6
  if fn.tabpagenr '$' ~= 1 then
    width = width + ((3 * fn.tabpagenr '$') + 2) + 10
    width = not vim.g.TbTabsToggled and 8 or width
  end
  return width
end

local function add_fileInfo(name, bufnr, style)
  if not devicons_status then
    return ''
  end

  local icon, icon_hl = devicons.get_icon(name, string.match(name, '%a+$'))

  if not icon then
    icon = ''
    icon_hl = 'Default'
  end

  local fileInfo = ' ' .. icon .. ' ' .. name .. ' ' -- initial value
  local pad = (24 - #fileInfo) / 2

  icon = (
    api.nvim_get_current_buf() == bufnr and new_hl(icon_hl, 'TbLineBufOn') .. ' ' .. icon
    or new_hl(icon_hl, 'TbLineBufOff') .. ' ' .. icon
  )

  name = style .. ' ' .. name .. ' '

  return string.rep(' ', pad) .. icon .. name .. string.rep(' ', pad - 1)
end

local function getBufferGitStatus(bufnr)
  -- return 'default'
  -- local handle = io.popen('git status -s -- ' .. fn.fnamemodify(api.nvim_buf_get_name(bufnr), '%'))
  -- local result = handle:read('*a')
  -- handle:close()
  --
  -- if (result ~= '') then
  --   return 'changed'
  -- end
  --
  -- local handle = io.popen('git ls-files -- ' .. fn.fnamemodify(api.nvim_buf_get_name(bufnr), '%'))
  -- local result = handle:read('*a')
  -- handle:close()
  --
  -- if (result == '') then
  --   return 'ignored'
  -- end

  return 'default'
  --
  -- handle = io.popen('git status -s -- ' .. fn.fnamemodify(api.nvim_buf_get_name(bufnr), '%'))
  -- result = handle:read('*a')
  -- handle:close()
  --
  -- if (result == '') then
  --   return 'default'
  -- end
  --
  -- return 'changed'
end

local styles = {
  ['default'] = { 'TbLineBufOnDefault', 'TbLineBufOffDefault' },
  ['changed'] = { 'TbLineBufOnChanged', 'TbLineBufOffChanged' },
  ['ignored'] = { 'TbLineBufOnIgnored', 'TbLineBufOffIgnored' },
}

local function styleBufferTab(nr)
  local open_current = nr == api.nvim_get_current_buf()
  local style = '%#' .. styles[getBufferGitStatus(nr)][open_current and 1 or 2] .. '#'

  local name = (#api.nvim_buf_get_name(nr) ~= 0) and fn.fnamemodify(api.nvim_buf_get_name(nr), ':t') or ' No Name '
  name = add_fileInfo(name, nr, style)

  local close_btn = ' '
  if open_current then
    close_btn = (vim.bo[0].modified and '%#TbLineBufOnModified# ') or ('%#TbLineBufOnClose#' .. close_btn)
  else
    close_btn = (vim.bo[nr].modified and '%#TbBufLineBufOffModified# ') or ('%#TbLineBufOffClose#' .. close_btn)
  end

  return style .. name .. close_btn
end

---------------------------------------------------------- components ------------------------------------------------------------
local M = {}

M.CoverNvimTree = function()
  return '%#NvimTreeNormal#' .. string.rep(' ', getNvimTreeWidth())
end

M.bufferlist = function()
  local buffers = {} -- buffersults
  local available_space = vim.o.columns - getNvimTreeWidth() - getBtnsWidth()
  local current_buf = api.nvim_get_current_buf()
  local has_current = false -- have we seen current buffer yet?

  for _, bufnr in ipairs(vim.t.bufs) do
    if api.nvim_buf_is_valid(bufnr) then
      if ((#buffers + 1) * 21) > available_space then
        if has_current then
          break
        end

        table.remove(buffers, 1)
      end

      has_current = (bufnr == current_buf and true) or has_current
      table.insert(buffers, styleBufferTab(bufnr))
    end
  end

  return table.concat(buffers) .. '%#TblineFill#' .. '%=' -- buffers + empty space
end

vim.g.TbTabsToggled = 0

M.tablist = function()
  local result, number_of_tabs = '', fn.tabpagenr '$'

  if number_of_tabs > 1 then
    for i = 1, number_of_tabs, 1 do
      local tab_hl = ((i == fn.tabpagenr()) and '%#TbLineTabOn# ') or '%#TbLineTabOff# '
      result = result .. tab_hl .. i .. ' '
      result = (i == fn.tabpagenr() and result) or result
    end

    return result
  end
end

M.run = function()
  return M.CoverNvimTree() .. M.bufferlist() .. (M.tablist() or '')
end

return M
