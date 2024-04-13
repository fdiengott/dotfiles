return {
    'sindrets/diffview.nvim',
    config = function()
        vim.keymap.set('n', '<leader>hd', ":DiffviewFileHistory %<CR>", { desc = 'git diff file' })
        vim.keymap.set('n', '<leader>hD', ":DiffviewFileHistory<CR>", { desc = 'git diff branch' })
    end
}
