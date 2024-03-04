local keymap = vim.api.nvim_set_keymap

vim.opt.cursorline = true
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

-- switch between windows
-- nmap("<C-h>", "<C-w>h")
-- nmap("<C-j>", "<C-w>j")
-- nmap("<C-k>", "<C-w>k")
-- nmap("<C-l>", "<C-w>l")
nmap("<leader>w", "<C-w>")

-- clear match highlighting
nmap("<leader>h", ":nohlsearch<CR>")

-- go to function/variable declarations
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

-- File Navigation
-- includes dot files
nmap("<leader>e", ":Telescope find_files hidden=true<cr>")
-- keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Navigation
nmap("(", "^")
nmap(")", "$")

-- Navigate buffers
nmap("<leader>]", ":bnext<CR>")
nmap("<leader>[", ":bprevious<CR>")

-- Insert
imap("jk", "<ESC>")

-- Visual
vmap("<C-k>", "<ESC>")


vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- shift highlighted lines up and down
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

-- when joining lines, keep cursor in the same spot
nmap("J", "mzJ`z")

-- ctrl up and down keep the cursor in the center of the screen
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")

-- when matching text, keep center aligned
nmap("n", "nzz")
nmap("N", "Nzz")

-- paste without putting the deleted text on the clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")

-- leader y yanks to OS clipboard so vim can have internal clipboard
nmap("<leader>y", "\"+y")
vmap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- starts a find and replace for the word under the cursor
nmap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--[[
Other mappings to know based on plugins

# ragtag
This will allow for quick adding of html tags

The following commands are done immediately after the tag has been typed (e.g. span|)
<C-x><space> --- adds a closing tag and puts the cursor between the two
<C-x><CR> --- adds a closing tag down a couple lines and puts the curser in the middle
--]]
