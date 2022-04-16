local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("v", "p", '"_dP', opts)


-- Stay in indent mode on tabbing
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)


-- Move text up and down in visual mode
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)



-- NvimtTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)


-- Telescope
--keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)
keymap("n", "F", ":Telescope live_grep<cr>", opts)
keymap("v", "F", "y<Esc>:Telescope live_grep default_text=<c-r>0<cr>", opts)
