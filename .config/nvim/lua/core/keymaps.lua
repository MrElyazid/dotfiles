-- ~/.config/nvim/lua/core/keymaps.lua

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

-- tab management
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode with double Esc" })

-- indent code
keymap.set("v", "<", "<gv", { desc = "Indent left and stay in visual mode" })
keymap.set("v", ">", ">gv", { desc = "Indent right and stay in visual mode" })

-- Delete to blackhole register (don't affect clipboard)
keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true, desc = "Delete to blackhole" })
keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true, desc = "Delete to end of line (blackhole)" })

-- Change also goes to blackhole (cuz it's delete + insert)
keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true, desc = "Change to blackhole" })
keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true, desc = "Change to end of line (blackhole)" })

-- x (cut), y (yank) still use the normal clipboard via unnamedplus

-- Toggle relative numbers on and off
keymap.set('n', '<leader>n', function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { noremap = true, silent = true, desc = "Toggle relative numbers" })


-- ########## PLUGIN SPECIFIC ############

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- comment.nvim
keymap.set("n", "<leader>c", "<Plug>(comment_toggle_linewise_current)", { desc = "Toggle comment for current line" })
keymap.set("v", "<leader>c", "<Plug>(comment_toggle_linewise_visual)", { desc = "Toggle comment for visual selection" })
