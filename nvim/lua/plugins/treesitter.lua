return {
	{
		"heitor-lassarote/alex-happy-vim",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"css",
					"lua",
					"vim",
					"vimdoc",
					"markdown",
					"javascript",
					"typescript",
					"latex",
					"haskell",
					"tsx",
					"pug",
					"vue",
					"rust",
					"python",
					"scss",
					"yaml",
					"zig",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
