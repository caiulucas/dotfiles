return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "eslint_d", stop_after_first = true },
				typescript = { "eslint_d", stop_after_first = true },
				vue = { "eslint_d", "biome", stop_after_first = true },
				rust = { "rustfmt" },
			},
			format_on_save = {
				lsp_format = "fallback",
			},
		},
	},
}
