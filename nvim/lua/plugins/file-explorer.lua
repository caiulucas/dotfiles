return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    opts = {
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      filesystem = {
        follow_current_file = {
          enabled = true
        }
      }
    }
    -- config = function() require("neo-tree").setup({
    --     document_symbols = true,
    --     source_selector = {
    --       statusline = false,
    --     },
    --     filesystem = {
    --       follow_current_file = {
    --         enabled = true,
    --       },
    --     },
    --   })
    -- end,
  },
  {
    "3rd/image.nvim",
    opts = {},
  },
}
