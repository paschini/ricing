return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      disable_frontmatter = true,

      attachments = {
        img_folder = "./attachments",
      },

      workspaces = {
        {
          name = "HomeLab",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/HomeLab/",
        },
        {
          name = "JobSökning",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/JobSökning/",
        },
        {
          name = "Learning Bevy",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/Learning Bevy/",
        },
        {
          name = "nvim",
          path = "~/Library/ary/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/nVim/",
        },
        {
          name = "Pebbles and Stars",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/Pebbles and Stars/",
        },
        {
          name = "Protection",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Camilas Obsidian Vault/Protection/",
        },
      },
    },
  },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      image = {
        -- your image configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
  },

  -- Tweak render-markdown.nvim for Obsidian-like behavior
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = {
        enabled = true,
        sign = true, -- don't put icons in the gutter
        -- :whenicons = { "▸ ", "▸ ", "▸ ", "▸ ", "▸ ", "▸ " },  -- collapsed arrows
        -- icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " }, -- true = hide # in normal mode, show when cursor is on line
        icons = { "", "", "", "", "", "", "" },
        position = "inline",
        render_modes = true,
        backgrounds = { "", "", "", "", "", "" },
      },
      code = {
        enabled = true, -- still render code blocks nicely
        position = "right",
        language_icon = true,
        language_name = false,
      },
      bullet = {
        enabled = true, -- keep Obsidian-style bullets
        sign = true,
      },
    },
  },
}
