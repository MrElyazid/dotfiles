-- ~/.config/nvim/lua/core/keymaps.lua

-- This file is for general keymaps
-- Plugin-specific keymaps are configured with the plugin

local keymap = vim.keymap

-- window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move to left window"  })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move to lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move to upper window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move to right window" })

-- window management (splits)
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })



-- tab management // actually ill just use commands
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode with double Esc" })


-- Stay in indent mode
keymap.set("v", "<", "<gv", { desc = "Indent left and stay in visual mode" })
keymap.set("v", ">", ">gv", { desc = "Indent right and stay in visual mode" })
