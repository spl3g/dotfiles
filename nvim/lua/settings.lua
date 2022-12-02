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
cmd 'imap оо <Esc>'
opt.foldlevel = 99
cmd 'colorscheme gruvbox8'
cmd 'set nocompatible'
cmd 'filetype plugin on'
o.clipboard = 'unnamedplus'
g.limelight_conceal_ctermfg = 'LightGray'
g.python_highlight_all=1
g.cssColorVimDoNotMessMyUpdatetime = 1
g.languagetool_jar='$HOME/languagetool/languagetool-commandline.jar'
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', 'ff', builtin.find_files, {})
-- vim.keymap.set('n', 'fg', builtin.live_grep, {})
-- vim.keymap.set('n', 'fb', builtin.buffers, {})
-- vim.keymap.set('n', 'fh', builtin.help_tags, {})
