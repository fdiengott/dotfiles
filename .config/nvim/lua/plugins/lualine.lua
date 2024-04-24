return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
        options = {
            icons_enabled = false,
            theme = 'iceberg_dark',
            component_separators = '|',
            section_separators = '',
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'diff' },
            lualine_c = {
                {
                    'filename',
                    path = 1
                },
            },
            lualine_x = { 'filetype' },
            lualine_y = { 'filesize' },
            lualine_z = { {
                'branch',
                fmt = function(str) return str:sub(string.len('feature') + 2) end,
                color = { bg = '#91dbfa', gui = 'bold' },
                icons_enabled = false,
            } },
            -- lualine_z = { 'location' }
        },
        tabline = {
            lualine_a = {
                {
                    'buffers',
                    symbols = {
                        alternate_file = ''
                    },
                }
            },
            lualine_z = { 'tabs', },
        }
    }
}
