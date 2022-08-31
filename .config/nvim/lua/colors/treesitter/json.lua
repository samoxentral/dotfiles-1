local set_hl = vim.api.nvim_set_hl
local base16 = require 'colors.colors'.base16

set_hl(0, 'JsonScalar', { fg = base16.base0E })
