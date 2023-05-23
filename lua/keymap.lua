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

-- key for open neovim tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
