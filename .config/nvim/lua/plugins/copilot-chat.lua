if is_linux() then
    return {}
end

return {
    -- return {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
        { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
        { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    opts = {
        debug = true, -- Enable debugging
        mappings = {
            complete = {
                normal = '<C-a>',
                insert = '<C-a>',
            },
            reset = {
                normal = '',
                insert = '',
            },
            submit_prompt = {
                normal = '<CR>',
                insert = '<C-CR>',
            },
        }
    }
}
