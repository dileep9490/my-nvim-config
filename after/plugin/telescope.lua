local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep,{})
vim.keymap.set('n','<leader>ss',function()
builtin.grep_string({search = vim.fn.input("Grep > ")});
end)