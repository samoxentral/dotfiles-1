local colors = require 'colors.colors'

local cl = {
  nord_blue = '#81A1C1',
  cyan = '#a3b8ef',
}

return {
  { 'StatusLine', { bg = colors.base00 } },
  { 'St_gitIcons', { fg = colors.base04, bg = colors.base00, bold = true } },
  { 'St_lspError', { fg = colors.base0F, bg = colors.base00 } },
  { 'St_lspWarning', { fg = colors.base0A, bg = colors.base00 } },
  { 'St_LspHints', { fg = colors.base0E, bg = colors.base00 } },
  { 'St_LspInfo', { fg = colors.base0B, bg = colors.base00 } },
  { 'St_LspStatus', { fg = cl.nord_blue, bg = colors.base00 } },
  { 'St_LspProgress', { fg = colors.base0B, bg = colors.base00 } },
  { 'St_LspStatus_Icon', { fg = colors.base00, bg = cl.nord_blue } },
  { 'St_NormalMode', { bg = cl.nord_blue, fg = colors.base00, bold = true } },
  { 'St_InsertMode', { bg = colors.base0E, fg = colors.base00, bold = true } },
  { 'St_TerminalMode', { bg = colors.base0B, fg = colors.base00, bold = true } },
  { 'St_NTerminalMode', { bg = colors.base0A, fg = colors.base00, bold = true } },
  { 'St_VisualMode', { bg = cl.cyan, fg = colors.base00, bold = true } },
  { 'St_ReplaceMode', { bg = colors.base08, fg = colors.base00, bold = true } },
  { 'St_ConfirmMode', { bg = colors.base09, fg = colors.base00, bold = true } },
  { 'St_CommandMode', { bg = colors.base0B, fg = colors.base00, bold = true } },
  { 'St_SelectMode', { bg = cl.nord_blue, fg = colors.base00, bold = true } },
  { 'St_EmptySpace', { fg = colors.base02, bg = colors.base01 } },
  { 'St_EmptySpace2', { fg = colors.base02, bg = colors.base00 } },
  { 'St_file_info', { bg = colors.base01, fg = colors.base05 } },
  { 'St_file_sep', { bg = colors.base00, fg = colors.base01 } },
  { 'St_cwd_text', { fg = colors.base04, bg = colors.base00 } },
  { 'St_DapStatus', { fg = colors.base0B, bg = colors.base00 } },
}
