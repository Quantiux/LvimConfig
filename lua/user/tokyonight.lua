require("tokyonight").setup{
  on_colors = function(colors)
    colors.comment = "#7e86b9"  -- brighten up comments
    -- colors.comment = "#565f89"   -- original
  end
}
lvim.builtin.theme.tokyonight.options.terminal_colors = false    -- use terminal's own color

-- load colorscheme
lvim.colorscheme = "tokyonight-storm"
-- lvim.colorscheme = "tokyonight-night"
-- lvim.colorscheme = "tokyonight-moon"
-- lvim.colorscheme = "tokyonight-day"

-- set long line (>100 characters) alert
-- vim.cmd([[
--     hi OverLength guibg=#565f89 ctermbg=gray
--     match OverLength /\%101v.\+/
-- ]])
