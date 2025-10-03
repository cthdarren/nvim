return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"vtsls",
					"html",
					"tailwindcss",
					"cssls",
					"jdtls",
					"pyright",
					"clangd",
                    "eslint"
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = vim.lsp
			local util = require("lspconfig.util")

			lspconfig.config('lua_ls', {
				capabitlies = capabilities,
			})
			lspconfig.config('html', {
				capabitlies = capabilities,
			})
			lspconfig.config('tailwindcss', {
				capabitlies = capabilities,
			})
			lspconfig.config('cssls', {
				capabitlies = capabilities,
			})
			lspconfig.config('jdtls', {
				capabitlies = capabilities,
			})
			lspconfig.config('pyright', {
				capabitlies = capabilities,
			})
			lspconfig.config('clangd', {
				capabitlies = capabilities,
			})
			lspconfig.config('eslint', {
                settings={
                    packageManager = 'npm'
                },
				capabilities = capabilities,
			})
            lspconfig.enable('lua_ls')
            lspconfig.enable('html')
            lspconfig.enable('tailwindcss')
            lspconfig.enable('cssls')
            lspconfig.enable('jdtls')
            lspconfig.enable('pyright')
            lspconfig.enable('clangd')
            lspconfig.enable('eslint')

			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<C-,>", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set('n', '<C-k>', vim.diagnostic.open_float, {})
		end,
	},
}
