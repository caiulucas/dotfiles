return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader> ", builtin.live_grep, { desc = "Live grep" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
