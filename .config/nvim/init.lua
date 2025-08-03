vim.opt.number = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.swapfile = false

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>x', ':write<CR>:quit<CR>')

vim.cmd(":hi statusline guibg=NONE")
