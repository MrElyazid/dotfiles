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

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("AutoPlantUML", { clear = true }),
  pattern = { "*.puml", "*.plantuml", "*.iuml" },
  callback = function()
    local file = vim.fn.expand("%:p")
    local jar_path = vim.fn.expand("/home/elyazid/Applications/jars/plantuml-1.2025.10.jar")
    
    -- Structure the command as: java -jar /path/to/jar file
    vim.fn.jobstart({"java", "-jar", jar_path, file}, { detach = true })
  end,
})



-- latex support
-- Function to compile the LaTeX document using latexmk
local function compile_latex()
  -- Use latexmk for robust, multi-pass compilation.
  -- -pdf: forces PDF output.
  -- -silent: suppresses most informational output.
  -- %: Neovim's variable for the current buffer's filename.
  local cmd = 'latexmk -pdf -silent %'

  -- Execute the command silently (!). 
  -- Redirect stdout and stderr to /dev/null to keep the editor clean.
  vim.cmd('silent !' .. cmd .. ' > /dev/null 2>&1')
end

-- Create a named Autocmd Group to keep things organized and ensure clarity.
vim.api.nvim_create_autocmd('BufWritePost', {
  -- Group name
  group = vim.api.nvim_create_augroup('SimpleLatexCompile', { clear = true }),
  -- Only trigger for filetype 'tex'
  pattern = { '*.tex' },
  -- Execute the Lua function when the buffer is written/saved
  callback = compile_latex,
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
