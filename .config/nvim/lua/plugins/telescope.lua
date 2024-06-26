-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
return {
    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- Fuzzy Finder Algorithm which requires local dependencies to be built.
            -- Only load if `make` is available. Make sure you have the system
            -- requirements installed.
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
        config = function()
            local telescope = require('telescope')
            local lga_actions = require("telescope-live-grep-args.actions")

            telescope.setup({
                defaults = {
                    mappings = {
                        i = {
                            ['<C-u>'] = false,
                            ['<C-d>'] = false,
                            ['<C-k>'] = lga_actions.quote_prompt({ postfix = " --iglob *." }),
                        },
                    },
                    file_ignore_patterns = {
                        "node_modules",
                        ".git"
                    },
                },
            })

            telescope.load_extension("live_grep_args")
        end
    },
}
