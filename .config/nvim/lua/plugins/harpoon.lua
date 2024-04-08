return {
    'ThePrimeagen/harpoon',
    config = function()
        vim.keymap.set("n", "<leader>sm", ":Telescope harpoon marks<CR>", { desc = '[S]earch [m]arks' })
        vim.keymap.set("n", "<leader>ma", ":lua require('harpoon.mark').add_file()<CR>",
            { desc = '[m]ark [a]dd', noremap = true })
        vim.keymap.set("n", "<leader>ml", ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
            { desc = '[m]ark [l]ist', noremap = true })

        vim.keymap.set("n", "]m", ":lua require('harpoon.ui').nav_next()<CR>",
            { desc = 'next [m]ark', noremap = true })

        vim.keymap.set("n", "[m", ":lua require('harpoon.ui').nav_prev()<CR>",
            { desc = 'prev [m]ark', noremap = true })
    end
}
