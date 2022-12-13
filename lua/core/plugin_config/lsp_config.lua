require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = { "sumneko_lua","eslint","golangci_lint_ls","html","jsonls","jdtls","quick_lint_js","tsserver" ,"jedi_language_server","solidity","svelte","tailwindcss"}

})
