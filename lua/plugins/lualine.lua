vim.opt.showmode = false

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/aerial.nvim"
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "papercolor_light",
        disabled_filetypes = {
          statusline = { "neo-tree" },
        },
        ignore_focus = {
          "dapui_watches", "dapui_breakpoints",
          "dapui_scopes", "dapui_console",
          "dapui_stacks", "dap-repl"
        }
      },
      sections = {
        lualine_x = { "aerial" },

        -- Or you can customize it
        lualine_y = {
          {
            "aerial",
            -- The separator to be used to separate symbols in status line.
            sep = " - ",

            -- The number of symbols to render top-down. In order to render only 'N' last
            -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
            -- be used in order to render only current symbol.
            depth = -1,

            -- When 'dense' mode is on, icons are not rendered near their symbols. Only
            -- a single icon that represents the kind of current symbol is rendered at
            -- the beginning of status line.
            dense = true,

            -- The separator to be used to separate symbols in dense mode.
            dense_sep = ".",

            -- Color the symbol icons.
            colored = true,
          },
        },
      }
    })
  end,
}
