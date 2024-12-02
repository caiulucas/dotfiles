return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {
					"stylua",
					"eslint_d",
				},
			})

			vim.cmd(":MasonUpdate")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"volar",
					"eslint",
					"vimls",
					"marksman",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local on_attach = function(_, bufnr)
				vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
			end

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.vimls.setup({ on_attach = on_attach, capabilities = capabilities })
			lspconfig.rust_analyzer.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						imports = {
							granularity = {
								group = "module",
							},
							prefix = "self",
						},
						cargo = {
							buildScripts = {
								enable = true,
							},
						},
						procMacro = {
							enable = true,
						},
					},
				},
			})
			lspconfig.pyright.setup({ on_attach = on_attach, capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
			lspconfig.volar.setup({ on_attach = on_attach, capabilities = capabilities })
			lspconfig.ts_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = "/usr/lib/node_modules/@vue/typescript-plugin",
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
			})
		end,
	},
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		opts = {},
	},
}
