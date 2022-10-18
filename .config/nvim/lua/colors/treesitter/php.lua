local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, '@attribute.php', { fg = colors.base0D })
set_hl(0, '@string.php', { fg = colors.base0A })
set_hl(0, '@variable.php', { fg = colors.base0C })
set_hl(0, '@variable.builtin.php', { fg = colors.base0C })
set_hl(0, '@variable.php', { fg = colors.base0C })
set_hl(0, '@function.php', { fg = colors.base0B })
set_hl(0, '@const.builtin.php', { fg = colors.base0E })
set_hl(0, '@exception.php', { fg = colors.base0E, italic = true })
set_hl(0, '@error.php', { fg = colors.base05 })
