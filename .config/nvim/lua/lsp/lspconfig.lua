local nvim_lsp = require 'lspconfig'
local util = require 'lspconfig/util'

local on_attach = function(client, bufnr)
  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end

  require('illuminate').on_attach(client)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- PHP
nvim_lsp.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    intelephense = {
      environment = {
        phpVersion = '7.4',
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}

-- typescsipt
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  capabilities = capabilities,
}

-- go
nvim_lsp.gopls.setup {
  on_attach = on_attach,
  cmd = { 'gopls', 'serve' },
  filetypes = { 'go', 'gomod' },
  root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
  settings = {
    gopls = {
      analyses = { unusedparams = true },
      staticcheck = true,
    },
  },
  capabilities = capabilities,
}

-- yaml
nvim_lsp.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- lua
nvim_lsp.sumneko_lua.setup {
  on_attagch = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          [vim.fn.expand '$VIMRUNTIME/lua'] = true,
          [vim.fn.expand '$VIMRUNTIME/lua/vim/lsp'] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

-- dockerfile
nvim_lsp.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
