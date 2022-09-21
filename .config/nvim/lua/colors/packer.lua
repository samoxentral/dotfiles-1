local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'PackerPackageName', { fg = colors.base08 })
set_hl(0, 'PackerSuccess', { fg = colors.base0B })
set_hl(0, 'PackerStatusSuccess', { fg = colors.base08 })
set_hl(0, 'PackerStatusCommit', { fg = colors.base0D })
set_hl(0, 'PackeProgress', { fg = colors.base0D })
set_hl(0, 'PackerOutput', { fg = colors.base08 })
set_hl(0, 'PackerStatus', { fg = colors.base0D })
set_hl(0, 'PackerHash', { fg = colors.base0D })
