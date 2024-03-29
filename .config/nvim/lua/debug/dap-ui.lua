require('dapui').setup {
  icons = { expanded = '▾', collapsed = '▸' },
  mappings = {
    expand = { '<CR>', '<2-LeftMouse>' },
    open = 'o',
    remove = 'd',
    edit = 'e',
    repl = 'r',
    toggle = 't',
  },
  expand_lines = vim.fn.has 'nvim-0.7',
  layouts = {
    {
      elements = {
        { id = 'scopes', size = 0.5 },
        { id = 'breakpoints', size = 0.25 },
        { id = 'stacks', size = 0.25 },
      },
      size = 100,
      position = 'right',
    },
  },
  floating = {
    max_height = nil,
    max_width = nil,
    border = 'single',
    mappings = {
      close = { 'q', '<Esc>' },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil,
  },
}
