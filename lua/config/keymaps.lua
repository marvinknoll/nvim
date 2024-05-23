-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wk", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wh", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-w>l", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank into system clipblard with leader y and leader Y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
