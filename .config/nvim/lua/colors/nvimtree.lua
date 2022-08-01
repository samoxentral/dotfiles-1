local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'.colors

set_hl(0, 'NvimTreeEmptyFolderName', { fg = colors.folder_bg })
set_hl(0, 'NvimTreeEndOfBuffer', { fg = colors.darker_black })
set_hl(0, 'NvimTreeFolderIcon', { fg = colors.folder_bg })
set_hl(0, 'NvimTreeFolderName', { fg = colors.folder_bg })
set_hl(0, 'NvimTreeIndentMarker', { fg = colors.grey_fg })
set_hl(0, 'NvimTreeNormal', { bg = colors.darker_black })
set_hl(0, 'NvimTreeNormalNC', { bg = colors.darker_black })
set_hl(0, 'NvimTreeOpenedFolderName', { fg = colors.folder_bg })
set_hl(0, 'NvimTreeWinSeparator', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'NvimTreeWindowPicker', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'NvimTreeCursorLine', { bg = colors.black2 })
set_hl(0, 'NvimTreeSpecialFile', { fg = colors.yellow, bold = true })
set_hl(0, 'NvimTreeRootFolder', { fg = colors.red, bold = true })

set_hl(0, 'NvimTreeGitDirty', { fg = colors.yellow })
set_hl(0, 'NvimTreeGitStaged', { fg = colors.red })
set_hl(0, 'NvimTreeGitMerge', { fg = colors.green })
set_hl(0, 'NvimTreeGitRenamed', { fg = colors.yellow })
set_hl(0, 'NvimTreeGitNew', { fg = colors.red })
set_hl(0, 'NvimTreeGitDeleted', { fg = colors.red })
set_hl(0, 'NvimTreeGitIgnored', { fg = colors.grey_fg })
