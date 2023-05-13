local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("i", "jj", "<ESC>", opt)
-- jump out the bracket quickly
map("i", "ll", "<ESC>lA", opt)
map("i", "<C-j>", "<down>", opt)
map("i", "<C-k>", "<up>", opt)
map("i", "<C-h>", "<left>", opt)
map("i", "<C-l>", "<right>", opt)

map("n", "<leader>v", "<C-v>", opt)
