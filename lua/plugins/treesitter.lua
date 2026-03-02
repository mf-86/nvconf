return {
	"nvim-treesitter/nvim-treesitter",
  version="v0.9.2",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
  -- ignore checkhealth error because:
  -- https://www.reddit.com/r/neovim/comments/1741i6m/comment/k46p9zz/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
}
