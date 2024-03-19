return {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
        require('treesj').setup({
            vim.keymap.set('n', '<leader>m', require('treesj').toggle, { desc = 'toggle object' })
            -- require('treesj').split()
            -- require('treesj').join()
        })
    end,
}
