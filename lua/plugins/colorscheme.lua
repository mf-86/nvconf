return {
  'Mofiqul/dracula.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local dracula = require("dracula")
    dracula.setup({
      transparent_bg = false,
      colors = {
        comment = "#CDCCA5",
        purple = "#6ba0fa"
      }
    })
    require('dracula').load()
  end,
}
