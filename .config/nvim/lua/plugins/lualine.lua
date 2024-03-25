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
            lualine_b = { 'branch', 'diff' },
            lualine_c = {
                {
                    'filename',
                    path = 1
                },
            },
            -- lualine_x = { 'buffers' },
            lualine_y = { 'filetype', 'filesize' },
            lualine_z = { 'location' }
        },
        tabline = {
            lualine_a = { 'buffers' },
            lualine_z = { 'tabs', },
        }
    }
}

