local colors = require 'colors.colors'

return {
  { 'MatchWord', { bg = colors.base02, fg = colors.base05 } },

  { 'Pmenu', { bg = colors.base01 } },
  { 'PmenuSbar', { bg = colors.base01 } },
  { 'PmenuSel', { bg = colors.base0D, fg = colors.base00 } },
  { 'PmenuThumb', { bg = colors.base02 } },

  { 'MatchParen', { link = 'MatchWord' } },

  { 'Comment', { fg = colors.base03, italic = true } },

  { 'CursorLineNr', { fg = colors.base05 } },
  { 'LineNr', { fg = colors.base02 } },

  -- floating windows
  { 'FloatBorder', { fg = colors.base0D } },
  { 'NormalFloat', { bg = colors.base00_X } },

  { 'NvimInternalError', { fg = colors.base0F } },
  { 'WinSeparator', { fg = colors.base01 } },

  { 'Normal', { fg = colors.base05, bg = colors.base00 } },
  { 'Bold', { bold = true } },
  { 'Debug', { fg = colors.base08 } },
  { 'Directory', { fg = colors.base0D } },
  { 'Error', { fg = colors.base00, bg = colors.base08 } },
  { 'ErrorMsg', { fg = colors.base08, bg = colors.base00 } },
  { 'Exception', { fg = colors.base08 } },
  { 'FoldColumn', { fg = colors.base0C, bg = colors.base01 } },
  { 'Folded', { fg = colors.base03, bg = colors.base01 } },
  { 'IncSearch', { fg = colors.base01, bg = colors.base09 } },
  { 'Italic', { italic = true } },
  { 'Macro', { fg = colors.base08 } },
  { 'ModeMsg', { fg = colors.base0B } },
  { 'MoreMsg', { fg = colors.base0B } },
  { 'Question', { fg = colors.base0D } },
  { 'Search', { fg = colors.base01, bg = colors.base0A } },
  { 'Substitute', { fg = colors.base01, bg = colors.base0A } },
  { 'SpecialKey', { fg = colors.base03 } },
  { 'TooLong', { fg = colors.base08 } },
  { 'UnderLined', { fg = colors.base0B } },
  { 'Visual', { bg = colors.base02 } },
  { 'VisualNOS', { fg = colors.base08 } },
  { 'WarningMsg', { fg = colors.base08 } },
  { 'WildMenu', { fg = colors.base08, bg = colors.base0A } },
  { 'Title', { fg = colors.base0D } },
  { 'Conceal', { bg = 'none' } },
  { 'Cursor', { fg = colors.base00, bg = colors.base05 } },
  { 'NonText', { fg = colors.base03 } },
  { 'SignColumn', { fg = colors.base03 } },
  { 'ColorColumn', { bg = colors.base01 } },
  { 'CursorColumn', { bg = colors.base01 } },
  { 'CursorLine', { bg = colors.base01 } },
  { 'QuickFixLine', { bg = colors.base01 } },

  -- spell
  { 'SpellBad', { undercurl = true, sp = colors.base08 } },
  { 'SpellLocal', { undercurl = true, sp = colors.base0C } },
  { 'SpellCap', { undercurl = true, sp = colors.base0D } },
  { 'SpellRare', { undercurl = true, sp = colors.base0E } },
}
