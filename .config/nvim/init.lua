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

require('utils.copilot') -- loads a global fn to check if can use copilot

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

require('plugins.config.cmp')
require('plugins.config.comment')
require('plugins.config.copilot-chat')
require('plugins.config.harpoon')
require('plugins.config.mason')
require('plugins.config.mason')
require('plugins.config.neodev')
require('plugins.config.telescope')
require('plugins.config.treesitter')
require('plugins.config.vim-fugitive')
require('plugins.config.which-key')
require('plugins.config.nvim-ts-autotag')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
