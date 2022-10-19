local modules = {
  'alpha',
  'cmp',
  'dap',
  'devicons',
  'general',
  'git',
  'illuminate',
  'indentline',
  'lsp',
  'lspsaga',
  'mason',
  'nvimtree',
  'packer',
  'statusline',
  'tabline',
  'telescope',
  'treesitter.init',
}

for _, module in pairs(modules) do
  local groups = require('colors.' .. module)
  for _, data in pairs(groups) do
    vim.api.nvim_set_hl(0, data[1], data[2])
  end
end
