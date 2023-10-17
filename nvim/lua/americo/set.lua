-- clipboard integration
vim.opt.clipboard = unnamedplus

-- numbers and relative
vim.opt.nu = true
vim.opt.rnu = true

-- cursor shape
vim.opt.guicursor = ""

-- auto indenting for known filetypes
vim.cmd(':filetype indent on')
vim.cmd(':filetype plugin indent on')

-- formatting on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- tab and spaces boundary
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- this is the max spaces when (auto)indenting
vim.opt.shiftwidth = 2

-- search highlights
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- terminal colors
vim.opt.termguicolors = true

-- swap files location
vim.cmd(':set dir=~/tmp')

-- replacing the word that you are on
vim.keymap.set("n", "rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- line bracking and wrapping
vim.opt.linebreak = true
vim.opt.wrap = false
