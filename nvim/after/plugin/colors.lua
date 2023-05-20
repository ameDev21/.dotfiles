function colorMyVim(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  -- handle this with the terminal
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

colorMyVim("gruber-darker")
-- colorMyVim("gruvbox")
