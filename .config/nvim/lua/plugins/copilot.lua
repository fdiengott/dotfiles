local function getCopilot()
    local f = io.open("/home/fdiengott/.config/github-copilot/hosts.json", "r")
    if f ~= nil then
        io.close(f)

        return {
            "CopilotC-Nvim/CopilotChat.nvim",
            branch = "canary",
            dependencies = {
                { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
                { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
            },
            opts = {
                debug = true, -- Enable debugging
                -- See Configuration section for rest
            },
            -- See Commands section for default commands if you want to lazy load on them

            config = function()
                vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
                    expr = true,
                    replace_keycodes = false
                })

                vim.g.copilot_no_tab_map = true

                vim.keymap.set('n', '<leader>gc', ':CopilotChatToggle<CR>', { desc = 'Toggle [c]opilot chat' });
            end
        }
    else
        return {}
    end
end

local copilot = getCopilot()

return {
    'github/copilot.vim',
    copilot,
}
