-- setupping vim api variables
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- standard remapping for normal mode
keymap("i", "jk", "<Esc>", opts)

-- code block movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- navigation inside nvim windows
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-f>", "<C-f>f", opts)

-- close a file
keymap("n", "cf", ":bd<cr>", {})

-- system clipboard copying
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])

-- nvim-tree
keymap("n", "<C-o>", ":NvimTreeToggle<cr>", opts)

-- vimtex
keymap("", "co", ":VimtexCompile <cr>", {})
-- markdown preview
keymap("", "cm", ":MarkdownPreview<cr>", {})
