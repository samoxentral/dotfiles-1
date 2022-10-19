local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'IlluminatedWordText', { bg = colors.base02 })
set_hl(0, 'IlluminatedWordRead', { bg = colors.base02 })
set_hl(0, 'IlluminatedWordWrite', { bg = colors.base02 })
