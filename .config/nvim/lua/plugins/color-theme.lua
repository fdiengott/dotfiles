-- color theme
return {
    -- 'navarasu/onedark.nvim',
    -- 'folke/tokyonight.nvim',
    -- 'rebelot/kanagawa.nvim',
    -- 'Yazeed1s/minimal.nvim',
    'oxfist/night-owl.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.cmd([[colorscheme tokyonight-night]])
        -- vim.cmd([[colorscheme kanagawa-wave]])
        -- vim.cmd([[colorscheme minimal]])
        vim.cmd([[colorscheme night-owl]])
    end,
}
