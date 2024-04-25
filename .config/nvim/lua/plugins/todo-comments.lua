return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('todo-comments').setup({
            keywords = {
                ASK = { icon = "?", color = "warning", alt = { "QUESTION", "Q" } },
            },
            merge_keywords = true,
        })

        vim.keymap.set("n", "]t", function()
            require("todo-comments").jump_next()
        end, { desc = "Next todo comment" })

        vim.keymap.set("n", "[t", function()
            require("todo-comments").jump_prev()
        end, { desc = "Previous todo comment" })

        vim.keymap.set("n", "<leader>tl", ":TodoTelescope<cr>", { desc = "[T]odo location [L]ist" })
    end
}
