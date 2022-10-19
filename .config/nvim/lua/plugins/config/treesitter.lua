require('nvim-treesitter.configs').setup {
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

local override = { 'php', 'phpdoc' }

local content = ''
for _, name in pairs(override) do
  local f = assert(io.open(os.getenv 'HOME' .. '/.config/nvim/queries/' .. name .. '.scm', 'rb'))
  content = f:read '*all'
  f:close()
  -- if require('vim.treesitter.query').get_query(name, 'highlight') then
  require('vim.treesitter.query').set_query(name, 'highlights', content)
  -- end
end
