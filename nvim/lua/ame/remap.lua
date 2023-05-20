local keymap = vim.api.nvim_set_keymap
-- navigate inside the neovim with wsjk
local opts = { noremap = true }
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-f>", "<C-f>f", opts)

-- tree-nvi
keymap("n", "<C-o>", ":NvimTreeToggle<cr>", opts)

-- code block movement
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- system clipboard compying
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])

-- replacing the word that you are on
vim.keymap.set("n", "s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- cmake
keymap("", "cg", ":CMakeGenerate<cr>", {})
keymap("", "cb", ":CMakeBuild<cr>", {})
keymap("", "cq", ":CMakeClose<cr>", {})
keymap("", "cc", ":CMakeClean<cr>", {})

-- Dap
keymap("n", "<C-b>", ":lua require('dap').toggle_breakpoint()<cr>", {})
keymap("n", "<C-d>", ":lua require('dap').continue()<cr>", {})
keymap("n", "<C-f>", ":lua require('dap').step_over()<cr>", {})
keymap("n", "<C-t>", ":lua require('dap').terminate()<cr>", {})
keymap("n", "<C-i>", ":lua require('dap').step_into()<cr>", {})
keymap("n", "<C-c>", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", {})

-- vimtex
keymap("", "co", ":VimtexCompile<cr>", {})

-- toogleterm
keymap("n", "tt", ":ToggleTerm<cr>", {})

-- bufferline
keymap("n", "<S-l>", "<CMD>BufferLineCycleNext<CR>", {})
keymap("n", "<S-h>", "<CMD>BufferLineCyclePrev<CR>", {})

-- close file
keymap("n", "cf", ":bd<cr>", {})
