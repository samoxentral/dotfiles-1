local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'phpTSAttribute', { fg = colors.base0D })
set_hl(0, 'phpTSString', { fg = colors.base0A })
set_hl(0, 'phpVariable', { fg = colors.base0C })
set_hl(0, 'phpTSVariableBuiltin', { fg = colors.base0C })
set_hl(0, 'phpTSVariable', { fg = colors.base0C })
set_hl(0, 'phpTSFunction', { fg = colors.base0B })
set_hl(0, 'phpTSConstBuiltin', { fg = colors.base0E })
set_hl(0, 'phpTSException', { fg = colors.base0E, italic = true })
set_hl(0, 'phpTSError', { fg = colors.base05 })
