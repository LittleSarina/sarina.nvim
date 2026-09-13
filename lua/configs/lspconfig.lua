require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "roslyn_ls" }
vim.lsp.enable(servers)

-- Tiny diagnostic thing
vim.diagnostic.config(
  {
    underline = false,
    virtual_text = false,
    update_in_insert = false,
    severity_sort = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = " ",
        [vim.diagnostic.severity.WARN] = " ",
        [vim.diagnostic.severity.HINT] = " ",
        [vim.diagnostic.severity.INFO] = " ",
      }
    }
  }
)

vim.diagnostic.config({
  virtual_text = false,
})
-- read :h vim.lsp.config for changing options of lsp servers 
