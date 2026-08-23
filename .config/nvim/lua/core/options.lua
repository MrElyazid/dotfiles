-- ~/.config/nvim/lua/core/options.lua

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd.colorscheme("unokai")


local opt = vim.opt -- for concisness

-- Line numbers
-- opt.relativenumber = true
opt.number = true


-- file behaviour
opt.swapfile = false
opt.autoread = true
opt.undofile = true -- Persistent undo
opt.undolevels = 10000


-- Tabs and Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true


-- Search 
opt.ignorecase = true
opt.smartcase = true -- case sensitive if word is uppercase


-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false


-- Behavior
opt.clipboard = "unnamedplus"  -- Sync with system clipboard
opt.scrolloff = 8              -- Keep 8 lines visible above/below cursor
opt.updatetime = 250
opt.timeoutlen = 300

