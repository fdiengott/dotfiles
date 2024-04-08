return {
    'Wansmer/treesj',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
    keys = {
        { "<leader>o", "<cmd>TSJToggle<cr>", desc = "Toggle [o]bject" },
    },
    opts = { use_default_keymaps = false },
}
