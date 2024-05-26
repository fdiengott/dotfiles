return {
    "ty-labs/randiverse.nvim",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("randiverse").setup({
            -- Custom configurations here, or leave empty to use defaults
        })
    end
}
