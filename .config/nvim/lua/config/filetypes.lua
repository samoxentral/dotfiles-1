vim.cmd [[
  autocmd FileType php setlocal shiftwidth=4
  autocmd FileType php iabbrev /** /** */<Left><Left><Left>
  autocmd FileType php iabbrev doc /**<CR> *<CR> */<Esc>2k A
  autocmd FileType php iabbrev <buffer> getter public function getVar(): Type<CR>{<CR>return $this->var;
  autocmd FileType php iabbrev <buffer> setter public function setVar(Type $var): self<CR>{<CR>$this->var = $var;<CR>return $this;

  autocmd FileType NvimTree set cursorline
]]
