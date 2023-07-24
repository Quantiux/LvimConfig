require("tokyonight").setup{
  on_colors = function(colors)
    colors.comment = "#7e86b9"  -- brighten up comments
    -- colors.comment = "#565f89"   -- original
  end
}
lvim.builtin.theme.tokyonight.options.terminal_colors = false    -- use terminal's own color
