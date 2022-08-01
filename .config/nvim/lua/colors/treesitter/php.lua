local set_hl = vim.api.nvim_set_hl
local base16 = require 'colors.colors'.base16

set_hl(0, 'phpTSAttribute', { fg = base16.base0D })
set_hl(0, 'phpTSString', { fg = base16.base0A })
set_hl(0, 'phpVariable', { fg = base16.base0C })
set_hl(0, 'phpTSVariableBuiltin', { fg = base16.base0C, sp = "none" })
set_hl(0, 'phpTSVariable', { fg = base16.base0C })
set_hl(0, 'phpTSFunction', { fg = base16.base0B })
set_hl(0, 'phpTSConstBuiltin', { fg = base16.base0E })
set_hl(0, 'phpTSException', { fg = base16.base0E })
set_hl(0, 'phpTSError', { fg = base16.base05 })
