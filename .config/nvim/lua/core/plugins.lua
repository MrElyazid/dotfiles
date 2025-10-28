-- ~/.config/nvim/lua/core/plugins.lua

return {
	-- THEME
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd.colorscheme("tokyonight-storm")
		end,
	},


	-- FILE EXPLORER
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({
				-- options here
			})
			-- Add a keymap to toggle the file explorer
			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
		end,
	},


	-- STATUSLINE

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {"nvim-tree/nvim-web-devicons" }, -- for icons in the status line
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight",
				},
			})
			end,
	},

 -- LANGUAGE SERVER PROTOCOL
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      -- This function gets called for every language server that is attached
      local on_attach = function(client, bufnr)
        local keymap = vim.keymap
        -- Keymaps for LSP features
        keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "LSP Hover" })
        keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
        keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to References" })
      end

      -- List of servers to install
      local servers = {
        "pyright",   -- Python
        "gopls",     -- Go
        "bashls",    -- Bash
        "lua_ls",    -- For our Neovim config
      }

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason-lspconfig").setup({
        ensure_installed = servers,
        handlers = {
          -- Default handler for servers without special config
          function(server_name)
            lspconfig[server_name].setup({
              on_attach = on_attach,
              capabilities = capabilities,
            })
          end,

          -- Custom setup for Pyright
          ["pyright"] = function()
            lspconfig.pyright.setup({
              on_attach = on_attach,
              capabilities = capabilities,
              settings = {
                python = {
                  analysis = {
                    autoSearchPaths = true,
                    diagnosticMode = "openFilesOnly",
                    useLibraryCodeForTypes = true
                  }
                }
              }
            })
          end,

          -- Custom setup for Gopls
          ["gopls"] = function()
            lspconfig.gopls.setup({
              on_attach = on_attach,
              capabilities = capabilities,
              settings = {
                gopls = {
                  gofumpt = true, -- use gofumpt for formatting
                },
              },
            })
          end,
        }
      })
    end,
  },

  -- AUTO-COMPLETION
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Source for LSP
      "hrsh7th/cmp-buffer",   -- Source for text in current buffer
      "hrsh7th/cmp-path",     -- Source for file system paths
      "L3MON4D3/LuaSnip",     -- Snippet engine
      "saadparwaiz1/cmp_luasnip", -- Source for snippets
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Load custom VSCode-style snippets
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                  if cmp.get_selected_entry() then
                      cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }) -- Accept the selected item
                  else
                      fallback() -- Go to a new line if no entry is selected
                  end
              else
                  fallback() -- Always fallback to default <CR> behavior
              end
          end, { "i", "s" }),

          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })

      -- Integration with nvim-autopairs
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    end,
  },

  -- COMMENTING
  {
    "numToStr/Comment.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Optional: for enhanced commenting with TS
    config = function()
      require("Comment").setup({
       -- },
      })

      vim.keymap.set("n", "<leader>c", "<Plug>(comment_toggle_linewise_current)", { desc = "Toggle comment for current line" })
      vim.keymap.set("v", "<leader>c", "<Plug>(comment_toggle_linewise_visual)", { desc = "Toggle comment for visual selection" })

    end,
  },

  -- AUTO-PAIRS
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
      	disable_filetype = { "TelescopePrompt", "vim" }, -- Disable in specific filetypes
 		check_ts = false, -- Use treesitter to check for proper syntax (optional)
 		fast_wrap = {}, -- Enable fast wrapping using a shortcut
      })
    end,
  },

  -- TREESITTER (Better Syntax Highlighting & Code Understanding)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "HiPhish/rainbow-delimiters.nvim", -- Colorize matching brackets
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "python",
          "go",
          "bash",
          "lua",
          "json",
          "yaml",
          "markdown",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
      
      -- Rainbow delimiters setup
      local rainbow_delimiters = require("rainbow-delimiters")
      require("rainbow-delimiters.setup").setup({
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      })
    end,
  },

  -- TELESCOPE (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          -- Default configuration for telescope goes here
          mappings = {
            i = {
              -- Insert mode mappings
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
          },
        },
      })

      -- Keymaps for Telescope
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" })
    end,
  },

}
