vim.keymap.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})

vim.keymap.set('n', '<leader>gc', ':CopilotChatToggle<CR>', { desc = 'Toggle [c]opilot chat' });
