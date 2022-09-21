local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors')

set_hl(0, 'StatusLine', { bg = colors.base00 })
set_hl(0, 'St_gitIcons', { fg = colors.light_grey, bg = colors.base00, bold = true })
set_hl(0, 'St_lspError', { fg = colors.red, bg = colors.base00 })
set_hl(0, 'St_lspWarning', { fg = colors.base0A, bg = colors.base00 })
set_hl(0, 'St_LspHints', { fg = colors.dark_purple, bg = colors.base00 })
set_hl(0, 'St_LspInfo', { fg = colors.base0B, bg = colors.base00 })
set_hl(0, 'St_LspStatus', { fg = colors.nord_blue, bg = colors.base00 })
set_hl(0, 'St_LspProgress', { fg = colors.base0B, bg = colors.base00 })
set_hl(0, 'St_LspStatus_Icon', { fg = colors.base00, bg = colors.nord_blue })
set_hl(0, 'St_NormalMode', { bg = colors.nord_blue, fg = colors.base00, bold = true })
set_hl(0, 'St_InsertMode', { bg = colors.dark_purple, fg = colors.base00, bold = true })
set_hl(0, 'St_TerminalMode', { bg = colors.base0B, fg = colors.base00, bold = true })
set_hl(0, 'St_NTerminalMode', { bg = colors.base0A, fg = colors.base00, bold = true })
set_hl(0, 'St_VisualMode', { bg = colors.cyan, fg = colors.base00, bold = true })
set_hl(0, 'St_ReplaceMode', { bg = colors.orange, fg = colors.base00, bold = true })
set_hl(0, 'St_ConfirmMode', { bg = colors.teal, fg = colors.base00, bold = true })
set_hl(0, 'St_CommandMode', { bg = colors.base0B, fg = colors.base00, bold = true })
set_hl(0, 'St_SelectMode', { bg = colors.nord_blue, fg = colors.base00, bold = true })
set_hl(0, 'St_EmptySpace', { fg = colors.grey, bg = colors.lightbg })
set_hl(0, 'St_EmptySpace2', { fg = colors.grey, bg = colors.base00 })
set_hl(0, 'St_file_info', { bg = colors.lightbg, fg = colors.base05 })
set_hl(0, 'St_file_sep', { bg = colors.base00, fg = colors.lightbg })
set_hl(0, 'St_cwd_text', { fg = colors.light_grey, bg = colors.base00 })
set_hl(0, 'St_DapStatus', { fg = colors.base0B, bg = colors.base00 })
