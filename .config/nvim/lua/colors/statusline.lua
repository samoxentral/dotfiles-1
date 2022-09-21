local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'StatusLine', { bg = base16.base00 })
set_hl(0, 'St_gitIcons', { fg = colors.light_grey, bg = base16.base00, bold = true })
set_hl(0, 'St_lspError', { fg = colors.red, bg = base16.base00 })
set_hl(0, 'St_lspWarning', { fg = colors.yellow, bg = base16.base00 })
set_hl(0, 'St_LspHints', { fg = colors.dark_purple, bg = base16.base00 })
set_hl(0, 'St_LspInfo', { fg = base16.base0B, bg = base16.base00 })
set_hl(0, 'St_LspStatus', { fg = colors.nord_blue, bg = base16.base00 })
set_hl(0, 'St_LspProgress', { fg = base16.base0B, bg = base16.base00 })
set_hl(0, 'St_LspStatus_Icon', { fg = base16.base00, bg = colors.nord_blue })
set_hl(0, 'St_NormalMode', { bg = colors.nord_blue, fg = base16.base00, bold = true })
set_hl(0, 'St_InsertMode', { bg = colors.dark_purple, fg = base16.base00, bold = true })
set_hl(0, 'St_TerminalMode', { bg = base16.base0B, fg = base16.base00, bold = true })
set_hl(0, 'St_NTerminalMode', { bg = colors.yellow, fg = base16.base00, bold = true })
set_hl(0, 'St_VisualMode', { bg = colors.cyan, fg = base16.base00, bold = true })
set_hl(0, 'St_ReplaceMode', { bg = colors.orange, fg = base16.base00, bold = true })
set_hl(0, 'St_ConfirmMode', { bg = colors.teal, fg = base16.base00, bold = true })
set_hl(0, 'St_CommandMode', { bg = base16.base0B, fg = base16.base00, bold = true })
set_hl(0, 'St_SelectMode', { bg = colors.nord_blue, fg = base16.base00, bold = true })
set_hl(0, 'St_EmptySpace', { fg = colors.grey, bg = colors.lightbg })
set_hl(0, 'St_EmptySpace2', { fg = colors.grey, bg = base16.base00 })
set_hl(0, 'St_file_info', { bg = colors.lightbg, fg = base16.base05 })
set_hl(0, 'St_file_sep', { bg = base16.base00, fg = colors.lightbg })
set_hl(0, 'St_cwd_text', { fg = colors.light_grey, bg = base16.base00 })
set_hl(0, 'St_DapStatus', { fg = base16.base0B, bg = base16.base00 })
