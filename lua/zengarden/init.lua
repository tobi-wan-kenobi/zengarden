local module = {}

defaults = {
}

function module.setup(options)
  module.config = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function module.load()
  local theme = require("lush_theme.zengarden")

  lush(theme)
end

return module
