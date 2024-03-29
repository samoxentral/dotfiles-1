local fn = vim.fn

local modes = {
  ['n'] = { 'NORMAL', 'St_NormalMode' },
  ['niI'] = { 'NORMAL i', 'St_NormalMode' },
  ['niR'] = { 'NORMAL r', 'St_NormalMode' },
  ['niV'] = { 'NORMAL v', 'St_NormalMode' },
  ['no'] = { 'N-PENDING', 'St_NormalMode' },
  ['i'] = { 'INSERT', 'St_InsertMode' },
  ['ic'] = { 'INSERT', 'St_InsertMode' },
  ['ix'] = { 'INSERT completion', 'St_InsertMode' },
  ['t'] = { 'TERMINAL', 'St_TerminalMode' },
  ['nt'] = { 'NTERMINAL', 'St_NTerminalMode' },
  ['v'] = { 'VISUAL', 'St_VisualMode' },
  ['V'] = { 'V-LINE', 'St_VisualMode' },
  [''] = { 'V-BLOCK', 'St_VisualMode' },
  ['R'] = { 'REPLACE', 'St_ReplaceMode' },
  ['Rv'] = { 'V-REPLACE', 'St_ReplaceMode' },
  ['s'] = { 'SELECT', 'St_SelectMode' },
  ['S'] = { 'S-LINE', 'St_SelectMode' },
  [''] = { 'S-BLOCK', 'St_SelectMode' },
  ['c'] = { 'COMMAND', 'St_CommandMode' },
  ['cv'] = { 'COMMAND', 'St_CommandMode' },
  ['ce'] = { 'COMMAND', 'St_CommandMode' },
  ['r'] = { 'PROMPT', 'St_ConfirmMode' },
  ['rm'] = { 'MORE', 'St_ConfirmMode' },
  ['r?'] = { 'CONFIRM', 'St_ConfirmMode' },
  ['!'] = { 'SHELL', 'St_TerminalMode' },
}

local M = {}

M.mode = function()
  local m = vim.api.nvim_get_mode().mode
  local current_mode = '%#' .. modes[m][2] .. '#' .. '  ' .. modes[m][1]

  return current_mode .. ' ' .. '%#ST_EmptySpace#'
end

M.git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ''
  end

  local git_status = vim.b.gitsigns_status_dict

  local added = (git_status.added and git_status.added ~= 0) and ('  ' .. git_status.added) or ''
  local changed = (git_status.changed and git_status.changed ~= 0) and ('  ' .. git_status.changed) or ''
  local removed = (git_status.removed and git_status.removed ~= 0) and ('  ' .. git_status.removed) or ''
  local branch_name = '   ' .. git_status.head

  return '%#St_gitIcons#' .. branch_name .. added .. changed .. removed
end

-- LSP STUFF
M.LSP_progress = function()
  local Lsp = vim.lsp.util.get_progress_messages()[1]

  if vim.o.columns < 120 or not Lsp then
    return ''
  end

  local msg = Lsp.message or ''
  local percentage = Lsp.percentage or 0
  local title = Lsp.title or ''
  local spinners = { '', '' }
  local ms = vim.loop.hrtime() / 1000000
  local frame = math.floor(ms / 120) % #spinners
  local content = string.format(' %%<%s %s %s (%s%%%%) ', spinners[frame + 1], title, msg, percentage)

  return ('%#St_LspProgress#' .. content) or ''
end

M.LSP_Diagnostics = function()
  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  errors = (errors and errors > 0) and ('%#St_lspError#' .. ' ' .. errors .. ' ') or ''
  warnings = (warnings and warnings > 0) and ('%#St_lspWarning#' .. '  ' .. warnings .. ' ') or ''
  hints = (hints and hints > 0) and ('%#St_lspHints#' .. 'ﯧ ' .. hints .. ' ') or ''
  info = (info and info > 0) and ('%#St_lspInfo#' .. ' ' .. info .. ' ') or ''

  return errors .. warnings .. hints .. info
end

M.LSP_status = function()
  for _, client in ipairs(vim.lsp.get_active_clients()) do
    if client.attached_buffers[vim.api.nvim_get_current_buf()] then
      return (vim.o.columns > 70 and '%#St_LspStatus#' .. '  LSP ~ ' .. client.name .. ' ') or '   LSP '
    end
  end
end

M.pwd = function()
  local dir_name = fn.fnamemodify(fn.expand '%', ':~:.')
  return '%#St_cwd_text#' .. ' ' .. dir_name:gsub('/', ' / ')
end

local api = vim.api
local function getNvimTreeWidth()
  for _, win in pairs(api.nvim_tabpage_list_wins(0)) do
    if vim.bo[api.nvim_win_get_buf(win)].ft == 'NvimTree' then
      return api.nvim_win_get_width(win) - 9
    end
  end
  return 0
end

M.CoverNvimTree = function()
  return '%#NvimTreeNormal#' .. string.rep(' ', getNvimTreeWidth())
end

M.DapStatus = function()
  local status, dap = pcall(require, 'dap')
  if not status then
    return ''
  end

  local session = dap.session()
  return (session ~= nil and '%#St_DapStatus#' .. '   DAP ~ ' .. session.config.name .. ' ') or ''
end

M.cwd = function()
  local dir_icon = '  '
  local dir_name = fn.fnamemodify(fn.getcwd(), ':t')
  return (vim.o.columns > 85 and ('%#St_gitIcons#' .. dir_icon .. dir_name)) or ''
end

M.run = function()
  return table.concat {
    M.mode(),
    M.CoverNvimTree(),
    M.pwd(),

    '%=',
    M.LSP_progress(),
    '%=',

    M.LSP_Diagnostics(),
    M.LSP_status() or '',
    M.DapStatus(),
    M.git(),
    M.cwd(),
  }
end

return M
