local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = '[S]earch [r]ecently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>slb', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[S]earch in [l]ocal [b]uffer' })

local function telescope_live_grep_open_files()
	builtin.live_grep {
		grep_open_files = true,
		prompt_title = 'Live Grep in Open Files',
	}
end
vim.keymap.set('n', '<leader>so', telescope_live_grep_open_files, { desc = '[S]earch in [o]pen Files' })
-- vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>ps', builtin.git_files, { desc = '[p]roject [s]earch Git files' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [f]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [h]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [w]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [g]rep' })
vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })
-- vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>slf', function() builtin.find_files({ cwd = utils.buffer_dir() }) end,
	{ desc = '[S]earch [local] [f]iles' })
vim.keymap.set('n', '<leader>slg', function() builtin.live_grep({ cwd = utils.buffer_dir() }) end,
	{ desc = '[S]earch [local] by [G]rep' })
