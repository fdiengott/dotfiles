return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        keywords = {
            ASK = { icon = "?", color = "hint", alt = { "QUESTION" } }
        },
        merge_keywords = true,
    },
    config = function()
        require('todo-comments').setup({})

        vim.keymap.set("n", "]t", function()
            require("todo-comments").jump_next()
        end, { desc = "Next todo comment" })

        vim.keymap.set("n", "[t", function()
            require("todo-comments").jump_prev()
        end, { desc = "Previous todo comment" })

        vim.keymap.set("n", "<leader>tl", ":TodoTelescope<cr>", { desc = "[T]odo location [L]ist" })
    end
}
