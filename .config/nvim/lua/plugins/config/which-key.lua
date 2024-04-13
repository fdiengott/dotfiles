require('which-key').setup({
  plugins = {
    spelling = {
      enabled = true, -- use `z=` for spelling suggestions
      suggestions = 20,
    },
    presets = {
      g = true,
    },
  },
})
