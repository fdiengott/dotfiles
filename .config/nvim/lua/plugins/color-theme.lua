-- color theme
return {
    -- 'navarasu/onedark.nvim',
    -- 'folke/tokyonight.nvim',
    -- 'rebelot/kanagawa.nvim',
    -- 'Yazeed1s/minimal.nvim',
    -- 'oxfist/night-owl.nvim',
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.cmd([[colorscheme tokyonight-night]])
        -- vim.cmd([[colorscheme kanagawa-wave]])
        -- vim.cmd([[colorscheme minimal]])
        -- vim.cmd([[colorscheme night-owl]])
        vim.cmd([[colorscheme catppuccin-mocha ]])

        require("catppuccin").setup({
            dim_inactive = {
                enabled = true,    -- dims the background color of inactive window
                shade = "#ffffff",
                percentage = 0.25, -- percentage of the shade to apply to the inactive window
            },
        })
    end,
}
