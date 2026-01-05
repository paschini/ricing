return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- -- "latte", "frappe", "machiato"
        transparent_background = true,
        integrations = {
          treesitter_context = true,
          telescope = true,
          mason = true,
          nvimtree = true,
          cmp = true,
          gitsigns = true,
          lsp_trouble = true,
          markview = true,
          render_markdown = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
