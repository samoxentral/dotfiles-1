local mason_status, mason = pcall(require, 'mason')
local mason_config_status, mason_config = pcall(require, 'mason-lspconfig')
if not mason_status or not mason_config_status then
  return
end

mason.setup {
  ui = {
    icons = {
      package_pending = ' ',
      package_installed = ' ',
      package_uninstalled = ' ﮊ',
    },

    keymaps = {
      toggle_server_expand = '<CR>',
      install_server = 'i',
      update_server = 'u',
      check_server_version = 'c',
      update_all_servers = 'U',
      check_outdated_servers = 'C',
      uninstall_server = 'X',
      cancel_installation = '<C-c>',
    },
  },

  max_concurrent_installers = 10,
}

mason_config.setup {
  ensure_installed = {
    'intelephense',
    'tsserver',
    'gopls',
    'yamlls',
    'sumneko_lua',
    'dockerls',
  },
}
