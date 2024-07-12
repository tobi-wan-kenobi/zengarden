vim.g.colors_name = "zengarden"
vim.opt.termguicolors = true

package.loaded["lush_theme.zengarden"] = nil

require("lush")(require("lush_theme.zengarden"))
