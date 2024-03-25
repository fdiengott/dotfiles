return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                tavascript = { "prettier" },
                javascriptreact = { "prettier" },
                tavascriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                svelte = { "prettier" },
                json = { "prettier" },
                markdown = { "prettier" },
                yaml = { "prettier" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            }
        })

        vim.keymap.set({ "n", "v" }, "<leader>pr", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range [pr]etty" })
    end
}
