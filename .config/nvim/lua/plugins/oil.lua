return {
    'stevearc/oil.nvim',
    config = function()
        require("oil").setup({
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
            },
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
                is_always_hidden = function(name, _)
                    return name == '..' or name == '.git'
                end
            }
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
