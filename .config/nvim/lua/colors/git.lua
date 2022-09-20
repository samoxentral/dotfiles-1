local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'DiffAdd', { fg = colors.blue })
set_hl(0, 'DiffAdded', { fg = colors.green })
set_hl(0, 'DiffChange', { fg = colors.light_grey })
set_hl(0, 'DiffChangeDelete', { fg = colors.red })
set_hl(0, 'DiffModified', { fg = colors.orange })
set_hl(0, 'DiffDelete', { fg = colors.red })
set_hl(0, 'DiffRemoved', { fg = colors.red })
-- git commits
set_hl(0, 'gitcommitOverflow', { fg = base16.base08 })
set_hl(0, 'gitcommitSummary', { fg = base16.base08 })
set_hl(0, 'gitcommitComment', { fg = base16.base03 })
set_hl(0, 'gitcommitUntracked', { fg = base16.base03 })
set_hl(0, 'gitcommitDiscarded', { fg = base16.base03 })
set_hl(0, 'gitcommitSelected', { fg = base16.base03 })
set_hl(0, 'gitcommitHeader', { fg = base16.base0E })
set_hl(0, 'gitcommitSelectedType', { fg = base16.base0D })
set_hl(0, 'gitcommitUnmergedType', { fg = base16.base0D })
set_hl(0, 'gitcommitDiscardedType', { fg = base16.base0D })
set_hl(0, 'gitcommitBranch', { fg = base16.base09, bold = true })
set_hl(0, 'gitcommitUntrackedFile', { fg = base16.base0A })
set_hl(0, 'gitcommitUnmergedFile', { fg = base16.base08, bold = true })
set_hl(0, 'gitcommitDiscardedFile', { fg = base16.base08, bold = true })
set_hl(0, 'gitcommitSelectedFile', { fg = base16.base0B, bold = true })
