-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use({ "ellisonleao/gruvbox.nvim" })
  use("blazkowolf/gruber-darker.nvim")
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use("tpope/vim-fugitive")
  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  })
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      {
        -- Optional
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" }, -- Optional
      -- Autocompletion
      { "hrsh7th/nvim-cmp" },                  -- Required
      { "hrsh7th/cmp-nvim-lsp" },              -- Required
      { "L3MON4D3/LuaSnip" },                  -- Required
      { "hrsh7th/cmp-cmdline" },
      { "rafamadriz/friendly-snippets" },
      { "hrsh7th/cmp-path" }, -- source for file system paths
    },
  })
  -- linters & formatters
  use("jose-elias-alvarez/null-ls.nvim")
  use("jay-babu/mason-null-ls.nvim")
  -- lualine plugin
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })
  use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
  -- comments plugin
  use("terrortylor/nvim-comment")
  require("nvim_comment").setup()
  -- autopairs
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })
  -- toggleterm
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({})
    end,
  })
  -- cmake
  use("cdelledonne/vim-cmake")
  -- dap
  use("mfussenegger/nvim-dap")
  use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
  -- LaTeX
  use("lervag/vimtex")
  -- image viewer
  use({
    "samodostal/image.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
end)
