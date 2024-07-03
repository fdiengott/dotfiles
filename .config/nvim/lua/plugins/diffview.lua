return {
    'sindrets/diffview.nvim',
    config = function()
        vim.keymap.set('n', '<leader>hd', ":DiffviewFileHistory %<CR>", { desc = 'git diff file' })
        vim.keymap.set('n', '<leader>hD', ":DiffviewFileHistory<CR>", { desc = 'git diff branch' })
        vim.keymap.set('n', '<leader>mc', ":DiffviewOpen<CR>", { desc = 'handle [m]erge [c]onflicts' })
        vim.keymap.set('n', '<leader>dc', ":DiffviewClose<CR>", { desc = '[d]iffview [c]lose' })
        -- use [x or ]x to merge between conflicts
        -- use <leader>c (with which key) to see options for merging in OURS or THEIRS
    end
}
