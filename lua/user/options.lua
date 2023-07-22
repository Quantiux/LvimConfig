vim.opt.colorcolumn = "100"
vim.opt.cmdheight = 0   -- removes line below statusline
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.textwidth = 100
-- vim.opt.shiftwidth = 4  -- sets console tabsize (default 2)
-----------------------------------------------------
-- turn on spell checking for markdown and text files
-----------------------------------------------------
vim.opt.spelllang = "en_us"
lvim.autocommands = {   -- https://www.lunarvim.org/docs/configuration/autocommands
  {
    "BufEnter",
    {
      pattern = { "*.md", "*.txt" },
      command = "setlocal spell",
    }
  },
}
-- vim.opt.spell = true    -- turn on spell for all filetypes
