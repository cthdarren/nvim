return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"javascript",
					"python",
					"html",
					"json",
					"typescript",
					"yaml",
					"css",
					"scss",
				},
				highlight = { enable = true },
				indent = { enable = true },
				sync_install = false,
				auto_install = true,
			})
		end,
	},
}
