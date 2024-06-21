return {
    "gaelph/logsitter.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("logsitter").setup({
            path_format = "fileonly",
            prefix = "🚀",
        })

        vim.keymap.set("n", "<localleader>l", function()
            require("logsitter").log()
        end, { desc = "[L]og current file" })

        vim.keymap.set("x", "<localleader>l", function()
            require("logsitter").log_visual()
        end, { desc = "[L]og current file" })

        vim.keymap.set("n", "<localleader>lx", function()
            require("logsitter").clear_buf()
        end, { desc = "[L]og clear buffer" })
    end,
}
