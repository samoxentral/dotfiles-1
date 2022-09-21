local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors')

set_hl(0, 'AlphaHeader', { fg = colors.base04 })
set_hl(0, 'AlphaButtons', { fg = colors.light_grey })
