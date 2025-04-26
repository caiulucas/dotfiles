return {
  { "lewis6991/gitsigns.nvim", opts = { current_line_blame = true, }, },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim", },
  },
}
