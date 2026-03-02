return {
	"dzfrias/arena.nvim",
  commit="f9268d7f0b30c93e592a87a24257956f1bb868ac",
	event = "BufWinEnter",
	-- Calls `.setup()` automatically
	config = true,
	keys = {
		{
			"<leader>fa",
			function()
				require("arena").toggle()
			end,
			mode = { "n", "v" },
			desc = "Toggle arena",
		},
	},
}
