vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.o.expandtab = true
vim.o.clipboard = "unnamedplus"
vim.o.pumheight = 10

vim.opt.spelllang = "en_us,pt_br" 
vim.opt.spell = true
