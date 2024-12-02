return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		config = function()
			require("neo-tree").setup({
				source_selector = {
					winbar = true,
					statusline = false,
				},
				filesystem = {
					follow_current_file = {
						enabled = true,
					},
				},
			})

			vim.opt.termguicolors = true
			vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle File Explorer" })
		end,
	},
}
