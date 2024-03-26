return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require("nvim-tree").setup({
            sort = {
                -- sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false
            },
            on_attach = function(bufnr)
                local api = require "nvim-tree.api"
                local opts = { noremap = true, silent = true }

                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.set("n", "<leader>q]", api.tree.expand_all, opts)
                vim.keymap.set("n", "<leader>q[", api.tree.collapse_all, opts)
                -- disable netrw at the very start of your init.lua
                vim.g.loaded_netrw = 1
                vim.g.loaded_netrwPlugin = 1

                -- optionally enable 24-bit colour
                vim.opt.termguicolors = true
            end
        })

        vim.keymap.set('n', "<leader>q", "<cmd>NvimTreeToggle<CR>")
    end
}
