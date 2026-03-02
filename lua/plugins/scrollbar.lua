return {
  { -- scrollbar with information
		"lewis6991/satellite.nvim",
		dependencies = { "kevinhwang91/nvim-hlslens" },
		commit = "5d33376", -- TODO following versions require nvim 0.10
		event = "VeryLazy",
		opts = {
			winblend = 10, -- little transparency, hard to see in many themes otherwise
			handlers = {
				marks = { enable = false }, -- FIX mark-related error message
				quickfix = { enable = true, signs = { "·", ":", "󰇙" } },
        --diagnostic = true,
        --search = true, -- Requires hlslens to be loaded, will run require("scrollbar.handlers.search").setup() for you
			},
		},
	},
}
