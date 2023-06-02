local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("i", "jj", "<ESC>", opt)
-- jump out the bracket quickly
map("i", "ll", "<ESC>la", opt)
map("i", "<C-j>", "<down>", opt)
map("i", "<C-k>", "<up>", opt)
map("i", "<C-h>", "<left>", opt)
map("i", "<C-l>", "<right>", opt)

map("n", "<leader>v", "<C-v>", opt)

-- key for open neovim tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

-- Neovim tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- buffer line 
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
