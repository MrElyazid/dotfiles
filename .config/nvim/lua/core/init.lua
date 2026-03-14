-- ~/.config/nvim/lua/core/init.lua

-- Load options and keymaps before plugins
require("core.options")
require("core.keymaps")

-- setup lazy.nvim
require("lazy").setup({
	spec = {
		-- All plugins confi go to plugins.lua
		{ import = "core.plugins" },
},
	-- any other lazy.nvim options here
})


