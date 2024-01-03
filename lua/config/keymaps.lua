-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wk", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wh", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-w>l", { noremap = true })

