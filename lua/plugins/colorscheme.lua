return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          alpha = true,
          cmp = true,
          flash = true,
          gitsigns = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          lsp_trouble = true,
          mason = true,
          mini = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          neotest = true,
          noice = true,
          notify = true,
          neotree = true,
          semantic_tokens = true,
          telescope = true,
          treesitter = true,
          which_key = true,
        },
      })

      vim.cmd([[colorscheme catppuccin]])
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
