-- ~/.config/nvim/lua/core/init.lua

-- Load options and keymaps before plugins
require("core.options")
require("core.keymaps")

-- setup lazy.nvim
require("lazy").setup({
	spec = {
		-- All our plugins will go in this file
		{ import = "core.plugins" },
},
	-- configure any other lazy.nvim options here
})


