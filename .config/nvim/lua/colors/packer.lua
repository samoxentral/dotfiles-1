local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16

set_hl(0, 'PackerPackageName', { fg = base16.base08 })
set_hl(0, 'PackerSuccess', { fg = base16.base0B })
set_hl(0, 'PackerStatusSuccess', { fg = base16.base08 })
set_hl(0, 'PackerStatusCommit', { fg = base16.base0D })
set_hl(0, 'PackeProgress', { fg = base16.base0D })
set_hl(0, 'PackerOutput', { fg = base16.base08 })
set_hl(0, 'PackerStatus', { fg = base16.base0D })
set_hl(0, 'PackerHash', { fg = base16.base0D })
