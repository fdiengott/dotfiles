return {
    'Wansmer/treesj',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
    keys = {
        { "<leader>m", "<cmd>TSJToggle<cr>", desc = "Toggle object" },
    },
    opts = { use_default_keymaps = false },
}
