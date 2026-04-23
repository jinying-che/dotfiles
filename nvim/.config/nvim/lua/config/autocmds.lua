-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function augroup(name)
  return vim.api.nvim_create_augroup("user_" .. name, { clear = true })
end

local js_ts_ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" }
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("indent_js_ts"),
  pattern = js_ts_ft,
  callback = function(event)
    vim.bo[event.buf].tabstop = 2
    vim.bo[event.buf].shiftwidth = 2
    vim.bo[event.buf].softtabstop = 2
  end,
})
