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

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

nmap("<leader>ss", ":source %<CR>", '[ss]ource')

-- Open root init.lua file
nmap("<leader>vi", ":tabe $MYVIMRC<CR>", 'Open [vi]m config')

-- toggle relative line numbers
nmap("<leader>rl", ":set relativenumber!<CR>", 'Toggle [r]elative line numbers')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- switch between windows
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

nmap("<C-S-h>", "20<C-w><")
nmap("<C-S-j>", "10<C-w>-")
nmap("<C-S-k>", "10<C-w>+")
nmap("<C-S-l>", "20<C-w>>")

nmap("<leader>w", "<C-w>")

nmap("<leader>wh", "20<C-w><")
nmap("<leader>wj", "10<C-w>-")
nmap("<leader>wk", "10<C-w>+")
nmap("<leader>wl", "20<C-w>>")

-- clear match highlighting
nmap("<leader>h", ":nohlsearch<CR>")

-- Navigation
nmap("(", "^")
nmap(")", "$")

-- Navigate buffers
nmap("<leader>]", ":bnext<CR>", 'next buffer')
nmap("<leader>[", ":bprevious<CR>", 'previous buffer')

-- Splits
-- vim.keymap.set('n', "<leader>v", ":vs " .. currentDir, { desc = 'open filetree in current dir' })
-- vim.keymap.set('n', "<leader>e", ":e " .. currentDir, { desc = 'open filetree in current dir' })

local currentDir = "<C-r>=escape(expand(\"%:p:h\"), ' ') . '/'<cr>"
vim.keymap.set('n', "<leader>be", ":e " .. currentDir, { desc = 'open [b]uffer with :[e]' })
vim.keymap.set('n', "<leader>bv", ":vs " .. currentDir, { desc = 'open [b]uffer with :[v]s' })
vim.keymap.set('n', "<leader>bs", ":sp " .. currentDir, { desc = 'open [b]uffer with :[s]p' })
vim.keymap.set('n', "<leader>bd", ":bd<CR>", { desc = '[d]elete [b]uffer' })
vim.keymap.set('n', "<leader>bw", ":w<CR>", { desc = '[b]uffer [w]rite' })
vim.keymap.set('n', "<leader>fw", ":w<CR>", { desc = '[f]ormat [w]rite' })
vim.keymap.set('n', "<leader>nw", ":noa w<CR>", { desc = '[n]o format [w]rite' })

-- Insert
imap("jk", "<ESC>")
imap("kj", "<ESC>")
imap("<C-s>", "<C-x><C-o>")

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
nmap("<leader>y", "\"+y", 'yank to os clipboard')
vmap("<leader>y", "\"+y", 'yank to os clipboard')
nmap("<leader>Y", "\"+Y", 'yank line to os clipboard')

--[[
	Utilities
--]]

-- starts a find and replace for the word under the cursor
nmap("<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], '[R]eplace current word')

-- vmap("<leader>sw", [[:!tr ' ' '\n' | sort | tr '\n' ' '<CR>]], '[S]ort words')
vmap("<leader>s", ":sort<CR>", '[S]ort words')
nmap("<leader>ks", "<cmd>TSJToggle<cr>:norm vi{<cr>:sort<CR><cmd>TSJToggle<cr>", '[K]ey [S]ort')

-- quickfix
nmap("[q", ":cprev<cr>", "quickfix [p]rev")
nmap("]q", ":cnext<cr>", "quickfix [n]ext")

--[[
Other mappings to know based on plugins

# ragtag
This will allow for quick adding of html tags

The following commands are done immediately after the tag has been typed (e.g. span|)
<C-x><space> --- adds a closing tag and puts the cursor between the two
<C-x><CR> --- adds a closing tag down a couple lines and puts the curser in the middle
--]]

vim.keymap.set("n", "<leader>/", function()
	vim.cmd("norm gcO TODO: ")
end, { desc = 'Insert todo' })
