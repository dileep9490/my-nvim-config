local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("core.lsp.lsp-installer")
require("core.lsp.null-ls")
require("core.lsp.handlers").setup()
