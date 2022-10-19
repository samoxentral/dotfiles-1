return {
  { 'gD', vim.lsp.buf.declaration },
  {
    'gd',
    function()
      require('user.lsp.execute').execute 'textDocument/definition'
    end,
  },
  {
    'gr',
    function()
      require('user.lsp.execute').execute 'textDocument/references'
    end,
  },
  { 'gi', vim.lsp.buf.implementation },
  { 'K', vim.lsp.buf.hover },

  { '<leader>ls', vim.lsp.buf.signature_help },
  { '<leader>D', vim.lsp.buf.type_definition },

  { '<space>f', vim.lsp.buf.format },
  { '<space>f', vim.lsp.buf.range_formatting, 'v' },

  { '<leader>d', vim.diagnostic.open_float },
  { '[d', vim.diagnostic.goto_prev },
  { 'd]', vim.diagnostic.goto_next },
  { '<leader>q', vim.diagnostic.setloclist },

  { '<leader>wa', vim.lsp.buf.add_workspace_folder },
  { '<leader>wr', vim.lsp.buf.remove_workspace_folder },
  {
    '<leader>wl',
    function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end,
  },
}
