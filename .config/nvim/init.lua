
-- a global variable for the path of the core config

local core_path = vim.fn.stdpath("config") .. "/lua/core/"


-- LAZY.NVIM BOOTSTRAP
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- load core configuration
-- The 'core' module will contain options, keymaps, and plugins

require("core")
