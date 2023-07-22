-- add r-languageserver to skipped_servers list (run ":LvimCacheReset" for it to take effect)
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "r_language_server" })

-- Nvim-R settings
vim.g.maplocalleader = ","     -- map localleader to "," (Nvim-R sets it to "\")
vim.cmd[[
  autocmd TermOpen * setlocal nonu nornu      " no line number for console
  let R_auto_start = 1                        " do not autostart console with script
  let R_assign = 0                            " avoid '_' being substituted by '<-' in insert mode
  let R_hl_term = 1                           " enable output highlighting (default)
  let Rout_more_colors = 1                    " enable output command highlighting as in script
  let R_objbr_place = 'script,right'          " open object pane right of script
  let R_objbr_h = 10                          " height of object pane (if opens below)
  let R_objbr_w = 40                          " width of object pane (if opens right)
  let R_commented_lines = 0                   " prevent commented lines from being sourced to console
]]

-- cmp-nvim-r setting
lvim.builtin.cmp.formatting.source_names.cmp_nvim_r = "(Nvim_R)"  -- add to cmp sources list
require'cmp_nvim_r'.setup({
  filetypes = {'r', 'rmd', 'quarto'},
  doc_width = 60
})
