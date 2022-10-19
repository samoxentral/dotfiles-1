local default_opts = { noremap = true, silent = true }

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
  local maps = require('mapping.' .. module)
  for _, map in pairs(maps) do
    vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], default_opts)
  end
end
