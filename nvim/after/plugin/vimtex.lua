-- latex pdf viewer
vim.g.vimtex_view_method = 'zathura'

-- latex compiler
vim.g.vimtex_compiler_method = 'latexmk'

-- cleaning the vimtex junk
vim.cmd [[
  augroup RunCommandOnQuit
    autocmd!
    autocmd VimLeave *.tex lua RunCommandOnQuit()
  augroup END
]]

function RunCommandOnQuit()
  vim.fn.system('latexmk -c')
end
