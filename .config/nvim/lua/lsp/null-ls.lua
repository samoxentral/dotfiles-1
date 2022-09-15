local null_ls = require 'null-ls'

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.xmllint,
    null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.formatting.phpcsfixer,
  },
})
