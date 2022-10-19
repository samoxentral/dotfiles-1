local modules = {
  'comments',
  'dap',
  'default',
  'diffview',
  'git',
  'lsp',
  'nvimtree',
  'telescope',
}

for _, module in pairs(modules) do
  for _, map in pairs(require('mapping.' .. module)) do
    vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
  end
end
