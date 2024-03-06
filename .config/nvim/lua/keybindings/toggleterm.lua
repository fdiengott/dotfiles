require('toggleterm').setup({
	direction = 'horizontal',
	size = 20,
	open_mapping = [[<c-\>]],
})

vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm, { desc = 'open [T]erminal' })

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
	vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
	vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
	vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
	-- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
