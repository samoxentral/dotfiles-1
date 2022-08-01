local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

map('n', 'gD', vim.lsp.buf.declaration, {})
map('n', 'gd', function() require('lsp.user.execute').execute('textDocument/definition') end, default_opts)
map('n', 'gr', function() require('lsp.user.execute').execute('textDocument/references') end, default_opts)
map('n', 'gi', vim.lsp.buf.implementation, {})
map('n', 'K', vim.lsp.buf.hover, {})

map('n', '<leader>ls', vim.lsp.buf.signature_help, {})
map('n', '<leader>D', vim.lsp.buf.type_definition, {})

map('n', '<space>f', vim.lsp.buf.formatting, {})
map('v', '<space>f', vim.lsp.buf.range_formatting, { noremap = true })

map('n', '<leader>d', vim.diagnostic.open_float, {})
map('n', '[d', vim.diagnostic.goto_prev, {})
map('n', 'd]', vim.diagnostic.goto_next, {})
map('n', '<leader>q', vim.diagnostic.setloclist, {})

map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
map('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, {})
