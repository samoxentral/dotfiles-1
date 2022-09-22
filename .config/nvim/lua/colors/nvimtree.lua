local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

local fontColor = { fg = colors.base0D }

set_hl(0, 'NvimTreeEmptyFolderName', fontColor)
set_hl(0, 'NvimTreeEndOfBuffer', { fg = colors.base00_X })
set_hl(0, 'NvimTreeFolderIcon', fontColor)
set_hl(0, 'NvimTreeFolderName', fontColor)
set_hl(0, 'NvimTreeIndentMarker', { fg = colors.base04 })
set_hl(0, 'NvimTreeNormal', { bg = colors.base00_X })
set_hl(0, 'NvimTreeNormalNC', { bg = colors.base00_X })
set_hl(0, 'NvimTreeOpenedFolderName', fontColor)
set_hl(0, 'NvimTreeWinSeparator', { fg = colors.base00_X, bg = colors.base00_X })
set_hl(0, 'NvimTreeWindowPicker', { fg = colors.base0F, bg = colors.base01 })
set_hl(0, 'NvimTreeCursorLine', { bg = colors.base01 })
set_hl(0, 'NvimTreeSpecialFile', { fg = colors.base05 })
set_hl(0, 'NvimTreeExecFile', { fg = colors.base05 })
set_hl(0, 'NvimTreeRootFolder', { fg = colors.base0F })

set_hl(0, 'NvimTreeGitDirty', { fg = colors.base0C })
set_hl(0, 'NvimTreeGitStaged', { fg = colors.base0F })
set_hl(0, 'NvimTreeGitMerge', { fg = colors.base0F })
set_hl(0, 'NvimTreeGitRenamed', { fg = colors.base0C })
set_hl(0, 'NvimTreeGitNew', { fg = colors.base08 })
set_hl(0, 'NvimTreeGitDeleted', { fg = 'none' })
set_hl(0, 'NvimTreeGitIgnored', { fg = colors.base04 })
