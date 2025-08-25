-- ~/.config/nvim/lua/core/options.lua

-- Set space as athe leader key
-- THis must be set before plugins are loaded

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt -- for concisness


-- FISH SHELL
opt.shell = "/usr/bin/fish"


-- Line numbers

opt.relativenumber = true
opt.number = true

-- Tabs and Indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search 

opt.ignorecase = true
opt.smartcase = true

-- Appearance

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false


-- Behavior

opt.clipboard = "unnamedplus"
opt.scrolloff = 8

-- copy and paste behave like in other editors ( send deleted and cut text to blackhole )
vim.keymap.set({'n', 'v'}, 'd', '"_d')
vim.keymap.set({'n', 'v'}, 'c', '"_c')
vim.keymap.set({'n', 'v'}, 'x', '"_x')

-- toggle relative numbers on and off
vim.keymap.set('n', '<leader>n', function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { noremap = true, silent = true, desc = "Toggle relative numbers" })
