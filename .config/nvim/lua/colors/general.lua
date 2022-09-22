local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'MatchWord', { bg = colors.grey, fg = colors.base05 })

set_hl(0, 'Pmenu', { bg = colors.one_bg })
set_hl(0, 'PmenuSbar', { bg = colors.one_bg })
set_hl(0, 'PmenuSel', { bg = colors.base0D, fg = colors.base00 })
set_hl(0, 'PmenuThumb', { bg = colors.grey })

set_hl(0, 'MatchParen', { link = 'MatchWord' })

set_hl(0, 'Comment', { fg = colors.base03, italic = true })

set_hl(0, 'CursorLineNr', { fg = colors.base05 })
set_hl(0, 'LineNr', { fg = colors.grey })

-- floating windows
set_hl(0, 'FloatBorder', { fg = colors.base0D })
set_hl(0, 'NormalFloat', { bg = colors.darker_black })

set_hl(0, 'NvimInternalError', { fg = colors.base0F })
set_hl(0, 'WinSeparator', { fg = colors.line })

set_hl(0, 'Normal', { fg = colors.base05, bg = colors.base00 })
set_hl(0, 'Bold', { bold = true })
set_hl(0, 'Debug', { fg = colors.base08 })
set_hl(0, 'Directory', { fg = colors.base0D })
set_hl(0, 'Error', { fg = colors.base00, bg = colors.base08 })
set_hl(0, 'ErrorMsg', { fg = colors.base08, bg = colors.base00 })
set_hl(0, 'Exception', { fg = colors.base08 })
set_hl(0, 'FoldColumn', { fg = colors.base0C, bg = colors.base01 })
set_hl(0, 'Folded', { fg = colors.base03, bg = colors.base01 })
set_hl(0, 'IncSearch', { fg = colors.base01, bg = colors.base09 })
set_hl(0, 'Italic', { italic = true })
set_hl(0, 'Macro', { fg = colors.base08 })
set_hl(0, 'ModeMsg', { fg = colors.base0B })
set_hl(0, 'MoreMsg', { fg = colors.base0B })
set_hl(0, 'Question', { fg = colors.base0D })
set_hl(0, 'Search', { fg = colors.base01, bg = colors.base0A })
set_hl(0, 'Substitute', { fg = colors.base01, bg = colors.base0A, sp = 'none' })
set_hl(0, 'SpecialKey', { fg = colors.base03 })
set_hl(0, 'TooLong', { fg = colors.base08 })
set_hl(0, 'UnderLined', { fg = colors.base0B })
set_hl(0, 'Visual', { bg = colors.base02 })
set_hl(0, 'VisualNOS', { fg = colors.base08 })
set_hl(0, 'WarningMsg', { fg = colors.base08 })
set_hl(0, 'WildMenu', { fg = colors.base08, bg = colors.base0A })
set_hl(0, 'Title', { fg = colors.base0D, sp = 'none' })
set_hl(0, 'Conceal', { bg = 'none' })
set_hl(0, 'Cursor', { fg = colors.base00, bg = colors.base05 })
set_hl(0, 'NonText', { fg = colors.base03 })
set_hl(0, 'SignColumn', { fg = colors.base03, sp = 'none' })
set_hl(0, 'ColorColumn', { bg = colors.base01, sp = 'none' })
set_hl(0, 'CursorColumn', { bg = colors.base01, sp = 'none' })
set_hl(0, 'CursorLine', { bg = colors.base01, sp = 'none' })
set_hl(0, 'QuickFixLine', { bg = colors.base01, sp = 'none' })

-- spell
set_hl(0, 'SpellBad', { undercurl = true, sp = colors.base08 })
set_hl(0, 'SpellLocal', { undercurl = true, sp = colors.base0C })
set_hl(0, 'SpellCap', { undercurl = true, sp = colors.base0D })
set_hl(0, 'SpellRare', { undercurl = true, sp = colors.base0E })
