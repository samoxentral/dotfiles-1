local status, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
  return
end

nvim_treesitter.setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'bash',
    'tsx',
    'php',
    'phpdoc',
    'json',
    'yaml',
    'html',
    'scss',
    'go',
    'dockerfile',
    'vim',
    'lua',
    'markdown',
    'make',
    'query',
    'sql',
  },
}

local f = assert(io.open(os.getenv 'HOME' .. '/.config/nvim/queries/php.scm', 'rb'))
local content = f:read '*all'
f:close()
require('vim.treesitter.query').set_query('php', 'highlights', content)

local f = assert(io.open(os.getenv 'HOME' .. '/.config/nvim/queries/phpdoc.scm', 'rb'))
content = f:read '*all'
f:close()
require('vim.treesitter.query').set_query('phpdoc', 'highlights', content)
