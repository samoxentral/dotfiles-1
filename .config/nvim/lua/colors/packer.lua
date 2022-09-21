local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors').colors
local base16 = require('colors.colors').base16

set_hl(0, 'PackerPackageName', { fg = colors.red })
set_hl(0, 'PackerSuccess', { fg = base16.base0B })
set_hl(0, 'PackerStatusSuccess', { fg = base16.base08 })
set_hl(0, 'PackerStatusCommit', { fg = colors.blue })
set_hl(0, 'PackeProgress', { fg = colors.blue })
set_hl(0, 'PackerOutput', { fg = colors.red })
set_hl(0, 'PackerStatus', { fg = colors.blue })
set_hl(0, 'PackerHash', { fg = colors.blue })
