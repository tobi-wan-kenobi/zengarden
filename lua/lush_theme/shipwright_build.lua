local colorscheme = require("zengarden")
local lushwright = require("shipwright.transform.lush")
run(colorscheme,
  lushwright.to_vimscript,
  {overwrite, "zengarden.vim"})
