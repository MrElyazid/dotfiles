-- lua/core/lsp.lua

-- Ruff is installed outside Mason (~/.local/bin), so enable it explicitly.
vim.lsp.enable("ruff")

-- LSP keymaps and completion when a server attaches
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(event)
    local bufnr = event.buf

    -- Enable native LSP completion on this buffer
    vim.lsp.completion.enable(true, event.data.client_id, bufnr, {
      autotrigger = true,
    })

    -- LSP keymaps (buffer-local)
    local opts = { buffer = bufnr }
    -- this is available through CTRL-] but its akward on azerty
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)



    -- Inline param names / types
    vim.lsp.inlay_hint.enable(true, { bufnr = event.buf })

  end,
})

-- Format on save, only in buffers where an LSP formatter is attached.
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf })) do
      if client:supports_method("textDocument/formatting") then
        vim.lsp.buf.format({ bufnr = args.buf, async = false })
        return
      end
    end
  end,
})

-- Optional: customize diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
