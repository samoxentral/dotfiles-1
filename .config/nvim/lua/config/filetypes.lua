vim.cmd [[
  autocmd FileType php setlocal shiftwidth=4

  autocmd BufNewFile,BufRead *.lock setlocal filetype=json
  " autocmd BufNewFile,BufRead *.twig setlocal filetype=html not working((
]]
