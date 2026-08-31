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


-- Mason setup
require("mason").setup()

require("mason-lspconfig").setup({
  automatic_enable = true,
})
