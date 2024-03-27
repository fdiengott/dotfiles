-- this file isn't used, but is a good representation of what is imported
return {
    require('plugins.copilot'),
    require('plugins.copilot-chat'),
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
}
