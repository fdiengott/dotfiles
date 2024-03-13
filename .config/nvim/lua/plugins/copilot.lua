vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

vim.keymap.set('n', '<leader>gc', ':CopilotChatToggle<CR>', { desc = 'Toggle [c]opilot chat' });
