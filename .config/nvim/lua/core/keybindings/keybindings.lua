local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local nmap = function(keys, func)
	vim.api.nvim_set_keymap("n", keys, func, opts)
end
local vmap = function(keys, func)
	vim.api.nvim_set_keymap("v", keys, func, opts)
end
local imap = function(keys, func)
	vim.api.nvim_set_keymap("i", keys, func, opts)
end

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- switch between windows
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

-- clear match highlighting
nmap("<leader>h", ":nohlsearch<CR>")

-- go to function/variable declarations
-- keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

-- File Navigation
-- includes dot files
nmap("<leader>e", ":Telescope find_files hidden=true<cr>")
-- keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Navigation
nmap("(", "0")
nmap(")", "$")

-- Navigate buffers
nmap("<leader>b", ":bnext<CR>")
nmap("<leader>p", ":bprevious<CR>")

-- Insert
imap("jk", "<ESC>")

-- Visual
vmap("<C-k>", "<ESC>")


vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
