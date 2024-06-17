return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup({})

        vim.keymap.set('n', '<leader>cl', '<cmd>ColorizerToggle<cr>', { desc = "toggle [c]o[l]orizer" })
        vim.keymap.set('n', '<leader>cu', '<cmd>ColorizerUpdate<cr>')
    end
}
