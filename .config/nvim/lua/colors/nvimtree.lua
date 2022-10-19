local colors = require 'colors.colors'

local fontColor = { fg = colors.base0D }

return {
  { 'NvimTreeEmptyFolderName', fontColor },
  { 'NvimTreeEndOfBuffer', { fg = colors.base00_X } },
  { 'NvimTreeFolderIcon', fontColor },
  { 'NvimTreeFolderName', fontColor },
  { 'NvimTreeIndentMarker', { fg = colors.base04 } },
  { 'NvimTreeNormal', { bg = colors.base00_X } },
  { 'NvimTreeNormalNC', { bg = colors.base00_X } },
  { 'NvimTreeOpenedFolderName', fontColor },
  { 'NvimTreeWinSeparator', { fg = colors.base00_X, bg = colors.base00_X } },
  { 'NvimTreeWindowPicker', { fg = colors.base0F, bg = colors.base01 } },
  { 'NvimTreeCursorLine', { bg = colors.base01 } },
  { 'NvimTreeSpecialFile', { fg = colors.base05 } },
  { 'NvimTreeExecFile', { fg = colors.base05 } },
  { 'NvimTreeRootFolder', { fg = colors.base0F } },

  { 'NvimTreeGitDirty', { fg = colors.base0C } },
  { 'NvimTreeGitStaged', { fg = colors.base0F } },
  { 'NvimTreeGitMerge', { fg = colors.base0F } },
  { 'NvimTreeGitRenamed', { fg = colors.base0C } },
  { 'NvimTreeGitNew', { fg = colors.base08 } },
  { 'NvimTreeGitDeleted', { fg = 'none' } },
  { 'NvimTreeGitIgnored', { fg = colors.base04 } },
}
