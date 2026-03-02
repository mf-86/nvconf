return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		-- http://www.network-science.de/ascii/
		dashboard.section.header.val = {
			[[                                                      ]],
			[[                                                      ]],
			[[                                                      ]],
			[[            ___   __  __ /\_\    ___ ___              ]],
			[[          /' _ `\/\ \/\ \\/\ \ /' __` __`\            ]],
			[[          /\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \           ]],
			[[          \ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\          ]],
			[[           \/_/\/_/\/__/    \/_/\/_/\/_/\/_/          ]],
			[[                                                      ]],
			[[                                                      ]],
			[[                                                      ]],
			[[                                                      ]],
		}
		alpha.setup(dashboard.opts)
	end,
}
