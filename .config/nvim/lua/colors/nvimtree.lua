local set_hl = vim.api.nvim_set_hl
local base16 = require 'colors.colors'.base16
local colors = require 'colors.colors'.colors

local fontColor = { fg = colors.blue }

set_hl(0, 'NvimTreeEmptyFolderName', fontColor)
set_hl(0, 'NvimTreeEndOfBuffer', { fg = colors.darker_black })
set_hl(0, 'NvimTreeFolderIcon', fontColor)
set_hl(0, 'NvimTreeFolderName', fontColor)
set_hl(0, 'NvimTreeIndentMarker', { fg = colors.grey_fg })
set_hl(0, 'NvimTreeNormal', { bg = colors.darker_black })
set_hl(0, 'NvimTreeNormalNC', { bg = colors.darker_black })
set_hl(0, 'NvimTreeOpenedFolderName', fontColor)
set_hl(0, 'NvimTreeWinSeparator', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'NvimTreeWindowPicker', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'NvimTreeCursorLine', { bg = colors.black2 })
set_hl(0, 'NvimTreeSpecialFile', { fg = colors.white})
set_hl(0, 'NvimTreeRootFolder', { fg = colors.red })

set_hl(0, 'NvimTreeGitDirty', { fg = base16.base0C })
set_hl(0, 'NvimTreeGitStaged', { fg = base16.base0F })
set_hl(0, 'NvimTreeGitMerge', { fg = base16.base0F })
set_hl(0, 'NvimTreeGitRenamed', { fg = base16.base0C })
set_hl(0, 'NvimTreeGitNew', { fg = base16.base08 })
set_hl(0, 'NvimTreeGitDeleted', { fg = 'none' })
set_hl(0, 'NvimTreeGitIgnored', { fg = base16.base04 })
