-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = { 'go', 'lua', 'python', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash', 'svelte', 'markdown', 'sql', 'astro' },
    -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
    auto_install = false,
    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,
    -- List of parsers to ignore installing
    ignore_install = {},
    -- You can specify additional Treesitter modules here: -- For example: -- playground = {--enable = true,-- },
    modules = {},
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<c-space>',
        node_incremental = '<c-space>',
        scope_incremental = '<c-s>',
        node_decremental = '<M-space>',
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['aa'] = '@parameter.outer',
          ['ia'] = '@parameter.inner',
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
          ['ai'] = '@conditional.outer',
          ['ii'] = '@conditional.inner',
          ['al'] = '@loop.outer',
          ['il'] = '@loop.inner',
          ['ag'] = '@comment.outer',
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          -- [']m'] = '@function.outer',
          -- [']]'] = '@class.outer',
          [']['] = '@function.outer',
        },
        goto_next_end = {
          -- [']M'] = '@function.outer',
          -- [']['] = '@class.outer',
          [']]'] = '@function.outer',
        },
        goto_previous_start = {
          -- ['[m'] = '@function.outer',
          -- ['[['] = '@class.outer',
          ['[['] = '@function.outer',
        },
        goto_previous_end = {
          -- ['[M'] = '@function.outer',
          -- ['[]'] = '@class.outer',
          ['[]'] = '@function.outer',
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ['<leader>a'] = '@parameter.inner',
        },
        swap_previous = {
          ['<leader>A'] = '@parameter.inner',
        },
      },
    },
  }

  -- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
  -- ft_to_parser.mdx = "markdown"

  -- ("nvim-treesitter.language").register('md', 'mdx')
  vim.treesitter.language.register("md", "mdx")

  -- vim.treesitter.language.register()
end, 0)
