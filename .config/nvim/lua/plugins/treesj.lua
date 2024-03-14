return {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
        require('treesj').setup({
            vim.keymap.set('n', '<leader>to', require('treesj').toggle, { desc = '[t]oggle [o]bject' })
            -- require('treesj').split()
            -- require('treesj').join()
        })
    end,
}
