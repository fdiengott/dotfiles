-- local function getCopilot()
--     local f = io.open("/home/fdiengott/.config/github-copilot/hosts.json", "r")
--     print(f)
--     if f ~= nil then
--         io.close(f)
--         return {
--             "CopilotC-Nvim/CopilotChat.nvim",
--             branch = "canary",
--             dependencies = {
--                 { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
--                 { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
--             },
--             opts = {
--                 debug = true, -- Enable debugging
--             },
--         }
--     else
--         return {}
--     end
-- end

return {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
        { "zbirenbaum/copilot.lua" },         -- or github/copilot.vim
        { "nvim-lua/plenary.nvim" },          -- for curl, log wrapper
    },
    opts = {
        debug = true,         -- Enable debugging
    },
}
