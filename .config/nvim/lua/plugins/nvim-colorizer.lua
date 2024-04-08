return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup({})

        vim.keymap.set('n', '<leader>tcl', '<cmd>ColorizerToggle<cr>', { desc = "[t]oggle [c]o[l]orizer" })
        vim.keymap.set('n', '<leader>cu', '<cmd>ColorizerUpdate<cr>')
    end
}
