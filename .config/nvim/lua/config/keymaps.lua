-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Save file on macOS (zellij doesn't support it)
map({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Move lines up and down by Ctrl-Alt-j/k (Alt-j/k is used by zellij)
map({ "n" }, "<C-A-j>", "<cmd>m .+1<cr>==", { desc = "Move Line Down" })
map({ "n" }, "<C-A-k>", "<cmd>m .-2<cr>==", { desc = "Move Line Up" })
map("i", "<C-A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<C-A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<C-A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<C-A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- close current buffer/tab more quickly
map("n", "<leader>d", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

vim.api.nvim_create_user_command("Cppath", function(opts)
  local path = vim.fn.expand("%")
  if opts.fargs[1] then
    path = path .. ":" .. vim.fn.line(".")
  end
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, { nargs = "*" })

map("n", "<leader>cp", ":Cppath<cr>", { desc = "Copy path" })
map("n", "<leader>cP", ":Cppath(with_line = true)<cr>", { desc = "Copy path with line" })
