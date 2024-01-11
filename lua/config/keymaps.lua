-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local autopairs_space = function()
  local line = vim.api.nvim_get_current_line()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local pairs = line:sub(col, col + 1)
  if pairs == "[]" or pairs == "{}" or pairs == "()" then
    return "<Space><Space><Left>"
  end
  return "<Space>"
end

local autopairs_delete = function()
  local line = vim.api.nvim_get_current_line()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local pairs = line:sub(col, col + 1)
  if pairs == "[]" or pairs == "{}" or pairs == "()" or pairs == "''" or pairs == '""' or pairs == "``" then
    return "<BS><Delete>"
  end
  pairs = line:sub(col - 1, col + 2)
  if pairs == "[  ]" or pairs == "{  }" or pairs == "(  )" then
    return "<BS><Delete>"
  end
  return "<BS>"
end

local opts = {
  silent = true,
  buffer = true,
  expr = true,
}

vim.keymap.set("i", "<Space>", function()
  return autopairs_space()
end, opts)

vim.keymap.set("i", "<S-Space>", function()
  return autopairs_space()
end, opts)

vim.keymap.set("i", "<BS>", function()
  return autopairs_delete()
end, opts)
