return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					close_command = function(n)
						vim.g.bufdelete(n)
					end,
					right_mouse_command = function(n)
						vim.bufdelete(n)
					end,
					diagnostics = "nvim_lsp",
					mode = "buffers",
					themable = true,
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							highlight = "Directory",
							separator = false,
							text_align = "left",
						},
					},
				},
			})

			vim.opt.termguicolors = true
		end,
	},
	{ "famiu/bufdelete.nvim" },
}
