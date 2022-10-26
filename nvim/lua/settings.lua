local cmd = vim.cmd
local opt = vim.opt
local o = vim.o
local g = vim.g
local exec = vim.exec

o.number = true
o.relativenumber = true
o.termguicolors = true
o.foldmethod = 'indent'
cmd 'imap jj <Esc>'
opt.foldlevel = 99
cmd 'colorscheme gruvbox8'
o.clipboard = 'unnamedplus'
g.limelight_conceal_ctermfg = 'LightGray'
g.python_highlight_all=1
g.cssColorVimDoNotMessMyUpdatetime = 1
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
