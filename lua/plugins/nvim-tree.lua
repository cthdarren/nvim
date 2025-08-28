return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<C-b>", api.tree.toggle, {})
		require("nvim-tree").setup({
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			diagnostics = {
				enable = true,
			},
		})
	end,
}
