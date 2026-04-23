-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap gI to gi for go to implementation (using Snacks picker)
vim.keymap.set("n", "gi", function()
  Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })
