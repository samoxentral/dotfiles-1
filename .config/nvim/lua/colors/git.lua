local colors = require 'colors.colors'

return {
  { 'DiffAdd', { fg = colors.base0D } },
  { 'DiffAdded', { fg = colors.base0B } },
  { 'DiffChange', { fg = colors.base04 } },
  { 'DiffChangeDelete', { fg = colors.base0F } },
  { 'DiffModified', { fg = colors.base08 } },
  { 'DiffDelete', { fg = colors.base0F } },
  { 'DiffRemoved', { fg = colors.base0F } },
  -- git commits
  { 'gitcommitOverflow', { fg = colors.base08 } },
  { 'gitcommitSummary', { fg = colors.base08 } },
  { 'gitcommitComment', { fg = colors.base03 } },
  { 'gitcommitUntracked', { fg = colors.base03 } },
  { 'gitcommitDiscarded', { fg = colors.base03 } },
  { 'gitcommitSelected', { fg = colors.base03 } },
  { 'gitcommitHeader', { fg = colors.base0E } },
  { 'gitcommitSelectedType', { fg = colors.base0D } },
  { 'gitcommitUnmergedType', { fg = colors.base0D } },
  { 'gitcommitDiscardedType', { fg = colors.base0D } },
  { 'gitcommitBranch', { fg = colors.base09, bold = true } },
  { 'gitcommitUntrackedFile', { fg = colors.base0A } },
  { 'gitcommitUnmergedFile', { fg = colors.base08, bold = true } },
  { 'gitcommitDiscardedFile', { fg = colors.base08, bold = true } },
  { 'gitcommitSelectedFile', { fg = colors.base0B, bold = true } },
}
