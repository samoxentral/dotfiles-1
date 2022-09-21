local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'MasonHeader', { bg = colors.red, fg = base16.base00 })
set_hl(0, 'MasonHighlight', { fg = colors.blue })
set_hl(0, 'MasonHighlightBlock', { fg = base16.base00, bg = base16.base0B })
set_hl(0, 'MasonHighlightBlockBold', { link = 'MasonHighlightBlock' })
set_hl(0, 'MasonHeaderSecondary', { link = 'MasonHighlightBlock' })
set_hl(0, 'MasonMuted', { fg = colors.light_grey })
set_hl(0, 'MasonMutedBlock', { fg = colors.light_grey, bg = colors.one_bg })
