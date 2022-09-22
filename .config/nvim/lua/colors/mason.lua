local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'MasonHeader', { bg = colors.base0F, fg = colors.base00 })
set_hl(0, 'MasonHighlight', { fg = colors.base0D })
set_hl(0, 'MasonHighlightBlock', { fg = colors.base00, bg = colors.base0B })
set_hl(0, 'MasonHighlightBlockBold', { link = 'MasonHighlightBlock' })
set_hl(0, 'MasonHeaderSecondary', { link = 'MasonHighlightBlock' })
set_hl(0, 'MasonMuted', { fg = colors.base04 })
set_hl(0, 'MasonMutedBlock', { fg = colors.base04, bg = colors.one_bg })
