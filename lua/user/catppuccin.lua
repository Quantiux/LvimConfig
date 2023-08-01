require("catppuccin").setup{
  transparent_background = false,
  term_colors = true,
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
}

-- load colorscheme
lvim.colorscheme = "catppuccin-macchiato"
-- lvim.colorscheme = "catppuccin-mocha"
-- lvim.colorscheme = "catppuccin-frappe"
-- lvim.colorscheme = "catppuccin-latte"

