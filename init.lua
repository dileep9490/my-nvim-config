if vim.g.vscode then

else

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

end
