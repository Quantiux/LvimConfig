require("onedarkpro").setup{
  options = {
    highlight_inactive_windows = false
  },
  highlights = {
    ["@string.lua"] = { fg = "${yellow}" }
  }
}

-- load colorscheme
lvim.colorscheme = "onedark_vivid"
