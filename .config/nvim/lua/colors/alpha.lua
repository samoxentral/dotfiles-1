local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors').colors

set_hl(0, 'AlphaHeader', { fg = colors.grey_fg })
set_hl(0, 'AlphaButtons', { fg = colors.light_grey })
