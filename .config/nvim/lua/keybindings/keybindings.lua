local keymap = vim.api.nvim_set_keymap

vim.opt.cursorline = true
local opts = { noremap = true, silent = true }

local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("n", keys, func, { noremap = true, silent = true, desc = desc })
end
local vmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("v", keys, func, { noremap = true, silent = true, desc = desc })
end
local imap = function(keys, func)
	vim.api.nvim_set_keymap("i", keys, func, opts)
end

-- Open root init.lua file
nmap("<leader>vi", ":tabe $MYVIMRC<CR>", 'Open [vi]m config')

-- Save on control+s
nmap("<C-s>", ":w<CR>")

-- set j and k to more obvious default behavior
nmap("j", "gj")
nmap("k", "gk")

-- switch between windows
-- nmap("<C-h>", "<C-w>h")
-- nmap("<C-j>", "<C-w>j")
-- nmap("<C-k>", "<C-w>k")
-- nmap("<C-l>", "<C-w>l")
nmap("<leader>w", "<C-w>")

-- clear match highlighting
nmap("<leader>h", ":nohlsearch<CR>")

-- File Navigation
-- includes dot files
nmap("<leader>e", ":Telescope find_files hidden=true<cr>")
-- keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Navigation
nmap("(", "^")
nmap(")", "$")

-- Navigate buffers
nmap("<leader>]", ":bnext<CR>", 'next buffer')
nmap("<leader>[", ":bprevious<CR>", 'previous buffer')

-- Splits
vim.keymap.set('n', "<leader>v", ":vs <C-r>=escape(expand(\"%:p:h\"), ' ') . '/'<cr>",
	{ desc = 'open filetree in current dir' })

-- Insert
imap("jk", "<ESC>")
imap("kj", "<ESC>")

-- Visual
vmap("<C-k>", "<ESC>")


vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = '[U]ndo tree' })

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
nmap("<leader>y", "\"+y", { desc = 'yank to os clipboard' })
vmap("<leader>y", "\"+y", { desc = 'yank to os clipboard' })
nmap("<leader>Y", "\"+Y", { desc = 'yank line to os clipboard' })

-- starts a find and replace for the word under the cursor
nmap("<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace current word' })

--[[
Other mappings to know based on plugins

# ragtag
This will allow for quick adding of html tags

The following commands are done immediately after the tag has been typed (e.g. span|)
<C-x><space> --- adds a closing tag and puts the cursor between the two
<C-x><CR> --- adds a closing tag down a couple lines and puts the curser in the middle
--]]
