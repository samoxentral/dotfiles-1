local set_hl = vim.api.nvim_set_hl
local base16 = require 'colors.colors'.base16

set_hl(0, 'tsxTSTagDelimiter', { fg = base16.base0C })
set_hl(0, 'tsxTSTag', { fg = base16.base0C })
set_hl(0, 'tsxTSTagAttribute', { fg = base16.base0B })
set_hl(0, 'tsxTSVariable', { fg = base16.base0C })
set_hl(0, 'tsxTSText', { fg = base16.base07 })
set_hl(0, 'tsxTStype', { fg = '#78ccf0' })
set_hl(0, 'tsxTSParameter', { fg = base16.base05 })
