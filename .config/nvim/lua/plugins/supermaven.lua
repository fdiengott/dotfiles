if is_linux() then
    return {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                accept_suggestion = "<C-a>",
                clear_suggestion = "<C-x>",
                accept_word = "<C-j>",
            })
        end,
    }
else
    return {}
end
