return {
    'sindrets/diffview.nvim',
    config = function()
        vim.keymap.set('n', '<leader>hd', ":DiffviewFileHistory %<CR>", { desc = 'git diff file' })
        vim.keymap.set('n', '<leader>hD', ":DiffviewFileHistory<CR>", { desc = 'git diff branch' })

        -- for the merge tool, when there is a merge conflict just run the command :Diffviewopen
        -- use [x or ]x to merge between conflicts
        -- use <leader>c (with which key) to see options for merging in OURS or THEIRS
    end
}
