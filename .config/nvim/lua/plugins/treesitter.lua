require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
    disalbe = {},
  },
  ensure_installed = {
    "tsx",
    "php",
    "phpdoc",
    "json",
    "yaml",
    "html",
    "scss",
    "go",
    "dockerfile",
    "vim",
    "lua",
    "markdown",
    "make",
    "query",
  }
}

require 'nvim-treesitter.highlight'.set_custom_captures {
  ['class_declaration'] = 'ClassDeclaration',
  ['interface_declaration'] = 'InterfaceDeclaration',
  ['function_call'] = 'FunctionCall',
  ['attribute_parameter'] = 'AttributeParameter',
}

local f = assert(io.open(os.getenv('HOME') .. '/.config/nvim/queries/php.scm', 'rb'))
local content = f:read("*all")
f:close()
require('vim.treesitter.query').set_query('php', 'highlights', content)

local f = assert(io.open(os.getenv('HOME') .. '/.config/nvim/queries/phpdoc.scm', 'rb'))
content = f:read("*all")
f:close()
require('vim.treesitter.query').set_query('phpdoc', 'highlights', content)
