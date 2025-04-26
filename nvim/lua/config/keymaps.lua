-- Move windows
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })

-- Move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Window
vim.keymap.set("n", "<leader>w", "", { desc = "Windows" })
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- Buffer
vim.keymap.set("n", "<leader>b", "", { desc = "Buffers" })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", { desc = "Pin buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<cr>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>%Bdelete<cr>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", { desc = "Delete non-pinned buffers" })
vim.keymap.set("n", "<leader>bo", "<cmd><cr>", { desc = "Delete other buffers" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- Trouble
vim.keymap.set("n", "<leader>x", "", { desc = "Trouble" })
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble diagnostics" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics filter.buf=0<cr>", { desc = "Trouble buffer diagnostics" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics filter.buf=0<cr>", { desc = "Trouble buffer diagnostics" })
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Trouble location list" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble quickfix list" })

-- Git
vim.keymap.set("n", "<leader>g", "", { desc = "Git" })
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
vim.keymap.set("n", "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Show diffs" })

-- Code
vim.keymap.set({ "n", "v" }, "<leader>c", "", { desc = "Code" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set({ "n", "v" }, "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>'", "<cmd>Neotree document_symbols toggle<cr>", { desc = "Toggle symbols" })
vim.keymap.set("n", "<leader>ge", "<cmd>Neotree git_status toggle<cr>", { desc = "Toggle git status" })

-- Zen mode
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen mode" })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { remap = true })
vim.keymap.set("v", ">", ">gv", { remap = true })

-- Spell
vim.keymap.set("n", "<leader>s", "", { desc = "Spell" })
vim.keymap.set("n", "<leader>ss", "<cmd>set spell<cr>", { desc = "Turn on spell" })
vim.keymap.set("n", "<leader>sd", "<cmd>set nospell<cr>", { desc = "Turn off spell" })

-- Save
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Quit all
vim.keymap.set("n", "<leader>q", function()
  vim.cmd("Neotree close")
  vim.cmd("qa")
end, { desc = "Quit all" })
