require 'config.buffers'
require 'config.settings'
require 'config.providers'

require 'config.filetypes'

require('utils.loader').mapping 'default'

require('utils.loader').highlight 'general'
require('utils.loader').highlight 'statusline'
require('utils.loader').highlight 'tabline'
require('utils.loader').highlight 'git'
