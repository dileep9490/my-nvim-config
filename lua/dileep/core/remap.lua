local opts = { noremap = true, silent = true } -- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- setting leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- -- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)
--
keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", opts)
keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", opts)
keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", opts)
keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", opts)

-- Resize with arrows
keymap("n", "<s-Up>", ":resize +2<CR>", opts)
keymap("n", "<s-Down>", ":resize -2<CR>", opts)
keymap("n", "<s-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<s-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- moving block (selected code)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
-- moving half page with cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pastes the code in the selected region without replacing it's value register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- save seelcted text into clip board
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- ?
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "Q", "<nop>")

--format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- -- format and save
-- keymap("n", "<c-s>", ":lua vim.lsp.buf.format()<cr> :w<cr>", opts)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--replace the work the cursor presents
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- creates executable [ not required ]
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- runs "so"
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
