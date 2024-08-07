local dark = {
  fg           = "#faebd7",
  fg_dim       = "#71706e",
  fg_alt       = "#202020",
  bg           = "#202020",
  bg_dim       = "#e8d8c1",
  bg_dim2      = "#2e2e2e",
  black        = "#202020",
  white        = "#faebd7",
  grey         = "#686b6c",
  bg_active    = "#b2a9ac",
  red          = "#c4757d",
  blue         = "#4e98c5",
  magenta      = "#a27ebd",
  orange       = "#bf7e52",
  cyan         = "#39a391",
}

local light = {
  fg           = "#202020",
  fg_dim       = "#686b6c",
  fg_alt       = "#202020",
  bg           = "#faebd7",
  bg_dim       = "#dddddd",
  bg_dim2      = "#e8d8c1",
  bg_active    = "#353839",
  black        = "#202020",
  white        = "#faebd7",
  red          = "#944a48",
  blue         = "#1a6b95",
  grey         = "#686b6c",
  magenta      = "#75528e",
  orange       = "#8e5225",
  cyan         = "#00726f",
}

local theme = dark
if vim.o.background == "light" then
  theme = light
end

return {
  normal = {
    a = { bg = theme.bg_active, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg_alt },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  insert = {
    a = { bg = theme.cyan, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg_alt },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  visual = {
    a = { bg = theme.orange, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg_alt },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  replace = {
    a = { bg = theme.red, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg_alt },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  command = {
    a = { bg = theme.magenta, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg_alt },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  inactive = {
    a = { bg = theme.fg_dim, fg = fg },
    b = { bg = theme.bg_dim2, fg = theme.fg_dim },
    c = { bg = theme.bg_dim2, fg = theme.fg_dim }
  }
}

