local cmd = vim.cmd
local opt = vim.opt
local o = vim.o
local g = vim.g
local exec = vim.exec

opt.number = true
opt.relativenumber = true
cmd 'colorscheme gruvbox8'
o.clipboard = 'unnamedplus'
g.limelight_conceal_ctermfg = 'LightGray'
