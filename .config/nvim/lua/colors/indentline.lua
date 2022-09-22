local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'IndentBlanklineChar', { fg = colors.base01 })
set_hl(0, 'IndentBlanklineSpaceChar', { fg = colors.base01 })
set_hl(0, 'IndentBlanklineContextChar', { fg = colors.base02 })
set_hl(0, 'IndentBlanklineContextStart', { bg = colors.base02 })
