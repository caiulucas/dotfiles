return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    opts = {},
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim", },
    opts = {
      ui = { enable = false },
      workspaces = { { name = "Main", path = "~/vaults/main" } },
    },
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      options = {
        laststatus = 0,
      },
    },
  },
}
