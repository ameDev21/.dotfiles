vim.g.zenbones_transparent_background = true
vim.g.zenbones_lighten_line_nr = 80

function ColorMyPencils(color)
  color = color or "default"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils("zenbones")
