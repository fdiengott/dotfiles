local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- File Navigation
keymap("n", "<leader>e", ":Telescope find_files<cr>", opts)

-- Navigation
keymap("n", "<C>(", "0", opts)
keymap("n", "<C>)", "$", opts)

-- Insert
keymap("i", "jk", "<ESC>", opts)

-- Visual
keymap("v", "<C-k>", "<ESC>", opts)
