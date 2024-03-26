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

require('plugins.lazy')

-- [[ Configure plugins ]]
--  You can configure plugins using the `config` key.
require('lazy').setup({
  require('plugins.copilot'),
  require('plugins.conform'),
  require('plugins.vim-repeat'),   -- makes the dot function a little smarter
  require('plugins.vim-sleuth'),   -- Detect tabstop and shiftwidth automatically
  require('plugins.vim-rhubarb'),  -- Git related plugins
  require('plugins.vim-fugitive'), -- Git related plugins
  require('plugins.vim-surround'), -- adding a new command/motion. see https://github.com/tpope/vim-surround for details
  require('plugins.leap'),         -- Leap Motion
  require('plugins.hlsearch'),
  require('plugins.emmet-vim'),    -- HTML/CSS/JS autocompletion
  require('plugins.nvim-tree'),
  require('plugins.nvim-colorizer'),
  require('plugins.oil'),
  require('plugins.diffview'),
  require('plugins.minintro'),
  require('plugins.nvim-lspconfig'),
  require('plugins.nvim-cmp'),
  require('plugins.which-key'),
  require('plugins.gitsigns'),
  require('plugins.color-theme'),
  require('plugins.lualine'),
  require('plugins.indent-blankline'),
  require('plugins.comment'),
  require('plugins.telescope'),
  require('plugins.treesitter'),
  -- require('plugins.undotree'),
  require('plugins.toggleterm'),

  -- require 'plugins.kickstart.autoformat',
  -- require 'plugins.kickstart.debug',
  require 'plugins.treesj',
  require 'plugins.todo-comments',
  require 'plugins.autopairs',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
}, {})

-- Imports
require 'plugins'
require 'keybindings'
require 'settings'
require 'snippets'
require 'autocmds'

require('keybindings.diagnostics')
require('autocmds.yank-highlight')
require('plugins.config.telescope')
require('plugins.config.treesitter')

formatting_options = {
  tabSize = 4,
  trimTrailingWhitespace = true,
  insertFinalNewline = true,
}

require('plugins.config.mason')
require('plugins.config.neodev')
require('plugins.config.mason')
require('plugins.config.cmp')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
