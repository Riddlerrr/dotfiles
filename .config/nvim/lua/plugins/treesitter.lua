return {
  {
    "RRethy/nvim-treesitter-endwise",
  },
  {
    "andymass/vim-matchup",
  },
  {
    "hiphish/rainbow-delimiters.nvim",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Enable endwise for ruby
      endwise = { enable = true },
      matchup = {
        enable = true, -- mandatory, false will disable the whole extension
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, _)
      vim.filetype.add({
        extension = { jbuilder = "ruby" },
      })
    end,
  },
}
