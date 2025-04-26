vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  virtual_text = {
    spacing = 4,
    source = "if_many",
    prefix = "●",
  }
})

vim.o.expandtab = true
vim.o.clipboard = "unnamedplus"
vim.o.pumheight = 10

vim.opt.spelllang = "en_us,pt_br"
vim.opt.spell = true
vim.opt.splitkeep = "screen"
-- vim.opt.conceallevel = 1

-- Folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("lazy").update({ show = false })
  end,
})

vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]])
