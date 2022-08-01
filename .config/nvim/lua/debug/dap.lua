local dap = require 'dap'

dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = { os.getenv 'HOME' .. '/.local/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'listen for xdeubg',
    port = 9003,
    serverSourceRoot = '/application',
    localSourceRoot = '${workspaceFolder}',
  },
}
