return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
				color_overrides = {
					mocha = {
						base = "#0F0F17",
						mantle = "#0F0F17",
						crust = "#0F0F17",
					},
				},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
				},
			})

			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		-- config = function()
		-- 	require("rose-pine").setup()
		--
		-- 	vim.cmd.colorscheme("rose-pine")
		-- end,
	},
	{
		"xiyaowong/transparent.nvim",
	},
}
