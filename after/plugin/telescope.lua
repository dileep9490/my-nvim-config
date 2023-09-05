local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files hidden=true<cr>", {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ss", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
