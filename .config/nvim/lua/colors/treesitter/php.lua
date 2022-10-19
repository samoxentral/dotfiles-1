local colors = require 'colors.colors'

return {
  { '@attribute.php', { fg = colors.base0D } },
  { '@string.php', { fg = colors.base0A } },
  { '@variable.php', { fg = colors.base0C } },
  { '@variable.builtin.php', { fg = colors.base0C } },
  { '@variable.php', { fg = colors.base0C } },
  { '@function.php', { fg = colors.base0B } },
  { '@const.builtin.php', { fg = colors.base0E } },
  { '@exception.php', { fg = colors.base0E, italic = true } },
  { '@error.php', { fg = colors.base05 } },
}
