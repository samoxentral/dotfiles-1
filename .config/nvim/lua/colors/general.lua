local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'.colors
local base16 = require 'colors.colors'.base16

set_hl(0, 'MatchWord', { bg = colors.grey, fg = colors.white })

set_hl(0, 'Pmenu', { bg = colors.one_bg })
set_hl(0, 'PmenuSbar', { bg = colors.one_bg })
set_hl(0, 'PmenuSel', { bg = colors.pmenu_bg, fg = colors.black })
set_hl(0, 'PmenuThumb', { bg = colors.grey })

set_hl(0, 'MatchParen', { link = "MatchWord" })

set_hl(0, 'Comment', { fg = colors.grey_fg, italic = true })

set_hl(0, 'CursorLineNr', { fg = colors.white })
set_hl(0, 'LineNr', { fg = colors.grey })

-- floating windows
set_hl(0, 'FloatBorder', { fg = colors.blue })
set_hl(0, 'NormalFloat', { bg = colors.darker_black })

set_hl(0, 'NvimInternalError', { fg = colors.red })
set_hl(0, 'WinSeparator', { fg = colors.line })

set_hl(0, 'Normal', { fg = base16.base05, bg = base16.base00 })
set_hl(0, 'Bold', { bold = true })
set_hl(0, 'Debug', { fg = base16.base08 })
set_hl(0, 'Directory', { fg = base16.base0D })
set_hl(0, 'Error', { fg = base16.base00, bg = base16.base08 })
set_hl(0, 'ErrorMsg', { fg = base16.base08, bg = base16.base00 })
set_hl(0, 'Exception', { fg = base16.base08 })
set_hl(0, 'FoldColumn', { fg = base16.base0C, bg = base16.base01 })
set_hl(0, 'Folded', { fg = base16.base03, bg = base16.base01 })
set_hl(0, 'IncSearch', { fg = base16.base01, bg = base16.base09 })
set_hl(0, 'Italic', { italic = true })
set_hl(0, 'Macro', { fg = base16.base08 })
set_hl(0, 'ModeMsg', { fg = base16.base0B })
set_hl(0, 'MoreMsg', { fg = base16.base0B })
set_hl(0, 'Question', { fg = base16.base0D })
set_hl(0, 'Search', { fg = base16.base01, bg = base16.base0A })
set_hl(0, 'Substitute', { fg = base16.base01, bg = base16.base0A, sp = "none" })
set_hl(0, 'SpecialKey', { fg = base16.base03 })
set_hl(0, 'TooLong', { fg = base16.base08 })
set_hl(0, 'UnderLined', { fg = base16.base0B })
set_hl(0, 'Visual', { bg = base16.base02 })
set_hl(0, 'VisualNOS', { fg = base16.base08 })
set_hl(0, 'WarningMsg', { fg = base16.base08 })
set_hl(0, 'WildMenu', { fg = base16.base08, bg = base16.base0A })
set_hl(0, 'Title', { fg = base16.base0D, sp = "none" })
set_hl(0, 'Conceal', { bg = "NONE" })
set_hl(0, 'Cursor', { fg = base16.base00, bg = base16.base05 })
set_hl(0, 'NonText', { fg = base16.base03 })
set_hl(0, 'SignColumn', { fg = base16.base03, sp = "NONE" })
set_hl(0, 'ColorColumn', { bg = base16.base01, sp = "none" })
set_hl(0, 'CursorColumn', { bg = base16.base01, sp = "none" })
set_hl(0, 'CursorLine', { bg = colors.one_bg3, sp = "none" })
set_hl(0, 'QuickFixLine', { bg = base16.base01, sp = "none" })

-- spell
set_hl(0, 'SpellBad', { undercurl = true, sp = base16.base08 })
set_hl(0, 'SpellLocal', { undercurl = true, sp = base16.base0C })
set_hl(0, 'SpellCap', { undercurl = true, sp = base16.base0D })
set_hl(0, 'SpellRare', { undercurl = true, sp = base16.base0E })
