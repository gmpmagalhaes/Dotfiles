require('pre-loader')
-- init()

require('plugins')

vim.g.mapleader = " "
vim.o.termguicolors = true
vim.o.incsearch = true
vim.o.smartcase = true

vim.o.tabstop = 4
vim.o.shiftwidth = vim.o.tabstop

vim.api.nvim_set_keymap('', '<Leader>p', '<cmd>Telescope find_files<cr>', { noremap = true })

vim.cmd('colorscheme xcodedark')
