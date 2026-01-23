vim.g.mapleader = "\\"

vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.keymap.set('n', 'd', function() vim.diagnostic.open_float() end)
vim.keymap.set('n', '<leader>ff', '<Esc>:Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')

vim.keymap.set('n', '<C-j>', ':tabprevious<CR>')
vim.keymap.set('n', '<C-l>', ':tabnext<CR>')
vim.keymap.set('n', '<C-t>', ':tabnew<CR>')

vim.keymap.set('i', '<C-j>', '<Esc>:tabprevious<CR>')
vim.keymap.set('i', '<C-l>', '<Esc>:tabnext<CR>')
vim.keymap.set('i', '<C-t>', '<Esc>:tabnew<CR>')

vim.opt.whichwrap = vim.opt.whichwrap + "<"
vim.opt.whichwrap = vim.opt.whichwrap + ">"
vim.opt.whichwrap = vim.opt.whichwrap + "["
vim.opt.whichwrap = vim.opt.whichwrap + "]"

require("config.lazy")

vim.diagnostic.open_float()
