--[[
 https://learnxinyminutes.com/docs/lua/
And then you can explore or search through `:help lua-guide`
  - https://neovim.io/doc/user/lua-guide.html
--]]

--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
-- Set <space> as the leader key
-- See `:help mapleader`
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins.config.lazy')

-- [[ Configure plugins ]]
-- For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
require("lazy").setup("plugins")

require 'keybindings'
require 'settings'
require 'snippets'
require 'autocmds'

formatting_options = {
  tabSize = 4,
  trimTrailingWhitespace = true,
  insertFinalNewline = true,
}

require('plugins.config.telescope')
require('plugins.config.treesitter')
require('plugins.config.mason')
require('plugins.config.neodev')
require('plugins.config.mason')
require('plugins.config.cmp')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
