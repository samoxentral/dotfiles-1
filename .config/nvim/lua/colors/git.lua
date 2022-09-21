local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'DiffAdd', { fg = colors.base0D })
set_hl(0, 'DiffAdded', { fg = colors.base0B })
set_hl(0, 'DiffChange', { fg = colors.light_grey })
set_hl(0, 'DiffChangeDelete', { fg = colors.base0F })
set_hl(0, 'DiffModified', { fg = colors.base08 })
set_hl(0, 'DiffDelete', { fg = colors.base0F })
set_hl(0, 'DiffRemoved', { fg = colors.base0F })
-- git commits
set_hl(0, 'gitcommitOverflow', { fg = colors.base08 })
set_hl(0, 'gitcommitSummary', { fg = colors.base08 })
set_hl(0, 'gitcommitComment', { fg = colors.base03 })
set_hl(0, 'gitcommitUntracked', { fg = colors.base03 })
set_hl(0, 'gitcommitDiscarded', { fg = colors.base03 })
set_hl(0, 'gitcommitSelected', { fg = colors.base03 })
set_hl(0, 'gitcommitHeader', { fg = colors.base0E })
set_hl(0, 'gitcommitSelectedType', { fg = colors.base0D })
set_hl(0, 'gitcommitUnmergedType', { fg = colors.base0D })
set_hl(0, 'gitcommitDiscardedType', { fg = colors.base0D })
set_hl(0, 'gitcommitBranch', { fg = colors.base09, bold = true })
set_hl(0, 'gitcommitUntrackedFile', { fg = colors.base0A })
set_hl(0, 'gitcommitUnmergedFile', { fg = colors.base08, bold = true })
set_hl(0, 'gitcommitDiscardedFile', { fg = colors.base08, bold = true })
set_hl(0, 'gitcommitSelectedFile', { fg = colors.base0B, bold = true })
