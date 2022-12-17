if vim.g.vscode then
else
  local status_ok, impatient = pcall(require, "impatient")
if status_ok then
  impatient.enable_profile()
  return
end
	require("core.keymaps")
	require("core.options")
	require("core.plugins")
	require("core.colorscheme")
	require("core.cmp")
	require("core.lsp")
	require("core.telescope")
	require("core.treesitter")
	require("core.autopairs")
	require("core.gitsigns")
	require("core.nvim-tree")
	require("core.bufferline")
	require("core.toggleterm")
	require("core.lualine")
	require("core.project")
  require("core.indentblankline")
  require("core.aplha")
  require("core.whichkey")
end
