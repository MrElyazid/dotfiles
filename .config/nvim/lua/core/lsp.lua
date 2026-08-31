-- lua/core/lsp.lua

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

-- Optional: customize diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
