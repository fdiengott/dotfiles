local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- switch between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- clear match highlighting
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- go to function/variable declarations
-- keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

-- File Navigation
-- includes dot files
keymap("n", "<leader>e", ":Telescope find_files hidden=true<cr>", opts)
-- keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Navigation
keymap("n", "(", "0", opts)
keymap("n", ")", "$", opts)

-- Navigate buffers
keymap("n", "<leader>b", ":bnext<CR>", opts)
keymap("n", "<leader>p", ":bprevious<CR>", opts)

-- Insert
keymap("i", "jk", "<ESC>", opts)

-- Visual
keymap("v", "<C-k>", "<ESC>", opts)
