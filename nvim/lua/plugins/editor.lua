return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- add region_check_events on InsertEnter
  {
    "L3MON4D3/LuaSnip",
    opts = { region_check_events = "InsertEnter" },
  },

  -- disable cmp-buffer
  { "hrsh7th/cmp-buffer", enabled = false },

  -- move tree to the right
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },

  -- add extra treesitter languages
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      ---@diagnostic disable-next-line: missing-parameter
      vim.list_extend(opts.ensure_installed, {
        "rust",
        "typescript",
        "tsx",
      })
    end,
  },
}
