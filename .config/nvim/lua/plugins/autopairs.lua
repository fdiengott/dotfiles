return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
    config = function()
        local M = {}

        function M.set()
            local npairs = require "nvim-autopairs"

            npairs.setup {
                check_ts = true,
            }
            npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
        end

        return M
    end
}
