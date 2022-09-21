local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors')

set_hl(0, 'IndentBlanklineChar', { fg = colors.line })
set_hl(0, 'IndentBlanklineSpaceChar', { fg = colors.line })
set_hl(0, 'IndentBlanklineContextChar', { fg = colors.grey })
set_hl(0, 'IndentBlanklineContextStart', { bg = colors.one_bg2 })
