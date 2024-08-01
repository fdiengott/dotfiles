-- local function create_goto_keymap(number)
--     return {
--         "<leader>" .. number,
--         function()
--             vim.api.nvim_command(number .. "bnext")
--         end,
--         desc = function()
--             local bufnr = vim.fn.bufnr(number)
--             if bufnr ~= -1 then
--                 local bufname = vim.fn.bufname(bufnr)
--                 return "Go to " .. (bufname ~= "" and vim.fn.fnamemodify(bufname, ":t") or "[No Name]")
--             else
--                 return "Go to -"
--             end
--         end,
--     }
-- end

-- Useful plugin to show you pending keybinds.
return {
    'folke/which-key.nvim',
    opts = {
    },
    config = function()
        -- document existing key chains
        local wk = require('which-key')
        wk.add({
            -- { "<leader>c", group = "[C]ode" },
            -- { "<leader>d", group = "[D]ocument" },
            { "<leader>h", group = "Git [H]unk" },
            -- { "<leader>r", group = "[R]ename" },
            { "<leader>s", group = "[S]earch" },
            { "<leader>t", group = "[T]oggle" },
            { "<leader>w", group = "[W]orkspace" },
        })
        -- register which-key VISUAL mode
        -- required for visual <leader>hs (hunk stage) to work
        wk.add({
            { "<leader>",  group = "VISUAL <leader>" },
            { "<leader>h", group = "Git [H]unk" },
        }, { mode = 'v' })

        -- wk.add({
        --     create_goto_keymap(1),
        --     create_goto_keymap(2),
        --     create_goto_keymap(3),
        --     create_goto_keymap(4),
        --     create_goto_keymap(5),
        --     create_goto_keymap(6),
        --     create_goto_keymap(7),
        --     create_goto_keymap(8),
        --     create_goto_keymap(9),
        -- })
    end
}
