require('null-ls').setup({
    sources = {
        require('null-ls').builtins.formatting.xmllint,
        require('null-ls').builtins.formatting.deno_fmt,
        require('null-ls').builtins.formatting.prettier,
    },
})
