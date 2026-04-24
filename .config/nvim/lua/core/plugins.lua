vim.pack.add({
    -- icons
    'https://github.com/nvim-tree/nvim-web-devicons',
    -- file manager
    'https://github.com/nvim-tree/nvim-tree.lua',
    -- treesitter
    'https://github.com/nvim-treesitter/nvim-treesitter',
    -- comment.nvim
    'https://github.com/numToStr/Comment.nvim',
    -- fzf
    'https://github.com/ibhagwan/fzf-lua',
    -- which key
    'https://github.com/folke/which-key.nvim',
    -- mason for lsp
    'https://github.com/mason-org/mason.nvim',
    -- mason lsp config
    'https://github.com/mason-org/mason-lspconfig.nvim',
    -- nvim lsp-config
    'https://github.com/neovim/nvim-lspconfig',

})



require("nvim-tree").setup({
        git = {
          ignore = false, -- Set to false to show files listed in .gitignore
        },
        filters = {
          dotfiles = false, -- Set to false to show files starting with .
        },
})

require("fzf-lua").setup({

  files = {
    prompt = "Files> ",
    git_icons = true,
    file_icons = true,
  },
  grep = {
    prompt = "Rg> ",
    input_prompt = "Grep For> ",
  },

  winopts = {
    border = "rounded",
    preview={default="bat"},
  }
})





-- i wanted to add this to keymaps.lua but it gives an error, the require doesnt resolve idk why

local fzf = require('fzf-lua')

-- Find files using <leader>ff
vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Fzf files' })
-- Live grep
vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Fzf live grep' })
-- Open buffers
vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'Fzf buffers' })
-- Help tags
vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = 'Fzf help tags' })
-- Recent files
vim.keymap.set('n', '<leader>fo', fzf.oldfiles, { desc = 'Fzf old files' })


-- Mason setup
require("mason").setup()

require("mason-lspconfig").setup({
  automatic_enable = true,
})
