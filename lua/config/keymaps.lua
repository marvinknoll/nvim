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

local function key(fr, to, where, desc)
  vim.keymap.set(where, fr, to, { desc = desc })
end

-- Rename word that you are on top of
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Diagnostics
local function toggle_diagnostics()
  if vim.diagnostic.is_disabled() then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable()
  end
end

key("<C-e>", toggle_diagnostics, { "i", "n", "v" }, "Toggle diagnostics")

-- -- Harpoon
-- local harpoon = require("harpoon")
--
-- -- REQUIRED
-- harpoon:setup()
-- -- REQUIRED
--
-- vim.keymap.set("n", "<leader>a", function()
--   harpoon:list():add()
-- end)
-- vim.keymap.set("n", "<C-e>", function()
--   harpoon.ui:toggle_quick_menu(harpoon:list())
-- end)
--
-- vim.keymap.set("n", "<C-h>", function()
--   harpoon:list():select(1)
-- end)
-- vim.keymap.set("n", "<C-t>", function()
--   harpoon:list():select(2)
-- end)
-- vim.keymap.set("n", "<C-n>", function()
--   harpoon:list():select(3)
-- end)
-- vim.keymap.set("n", "<C-s>", function()
--   harpoon:list():select(4)
-- end)
--
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function()
--   harpoon:list():prev()
-- end)
-- vim.keymap.set("n", "<C-S-N>", function()
--   harpoon:list():next()
-- end)
