lvim.plugins = {
  -- -- one dark pro colorscheme
  -- "olimorris/onedarkpro.nvim",

  -- markdown preview
  "iamcco/markdown-preview.nvim",

  -- chatGPT
  {
  "jackMort/ChatGPT.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    }
  },

  -- python dap
  "mfussenegger/nvim-dap-python",

  -- python venv switcher
  "AckslD/swenv.nvim",
  "stevearc/dressing.nvim",

  -- tabnine
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    event = "BufRead",
  },

  -- code_runner
  "CRAG666/code_runner.nvim",

  -- lf file manager
  "lmburns/lf.nvim",

  -- session management
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
  },

  -- nvim-r
  {
  "jalvesaq/Nvim-R",
    dependencies = {
      "jalvesaq/cmp-nvim-r",
    }
  },

}
