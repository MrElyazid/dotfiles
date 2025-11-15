-- ~/.config/nvim/lua/core/options.lua

-- Set space as the leader key
-- This must be set before plugins are loaded

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt -- for concisness


-- Shell configuration
-- Use bash for Nvim internal commands (plugin compatibility)
opt.shell = "/bin/bash"


-- Line numbers

opt.relativenumber = true
opt.number = true


-- watch out!! swapfile is disabled 
opt.swapfile = false


-- Tabs and Indentation
-- Python uses 4 spaces (PEP 8), Go uses tabs

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Search 

opt.ignorecase = true
opt.smartcase = true

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
opt.autoread = true            -- Auto reload files changed outside of Neovim

-- Language-specific indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false  -- Go uses real tabs
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Delete to blackhole register (don't affect clipboard)
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true, desc = "Delete to blackhole" })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true, desc = "Delete to end of line (blackhole)" })

-- Change also goes to blackhole (cuz it's delete + insert)
vim.keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true, desc = "Change to blackhole" })
vim.keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true, desc = "Change to end of line (blackhole)" })

-- x (cut), y (yank) still use the normal clipboard via unnamedplus

-- Toggle relative numbers on and off
vim.keymap.set('n', '<leader>n', function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { noremap = true, silent = true, desc = "Toggle relative numbers" })
