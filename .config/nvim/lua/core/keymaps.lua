-- ~/.config/nvim/lua/core/keymaps.lua

-- This file is for general keymaps
-- Plugin-specific keymaps will be configured with the plugin

local keymap = vim.keymap

-- clear search highlights

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


-- window navigation

keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move to left window"  })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move to lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move to upper window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move to right window" })

-- window management (splits)
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })


-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- Terminal shortcuts
keymap.set("n", "<leader>tt", ":terminal<CR>", { desc = "Toggle terminal" })
keymap.set("n", "<leader>ts", ":split | terminal fish<CR>", { desc = "Open terminal in horizontal split" })
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode with double Esc" })

-- super useful in insert mode
keymap.set("i", "à", "<Right>", { desc = "Move right in insert mode (AZERTY)" })
keymap.set("i", "ç", "<Left>", { desc = "Move left in insert mode (AZERTY)" })

-- LSP Diagnostics
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Show all diagnostics in list" })

-- Navigate diagnostics (any severity)
keymap.set("n", "<leader>à", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<leader>ç", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

-- Navigate errors only (skip warnings)
keymap.set("n", "<leader>é", function() vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR}) end, { desc = "Go to next error" })
keymap.set("n", "<leader>è", function() vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR}) end, { desc = "Go to previous error" })


