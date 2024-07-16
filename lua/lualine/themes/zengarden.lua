local dark = {
  fg           = "#faebd7",
  bg           = "#252321",
  bg_dim       = "#23191e",
  bg_dim2      = "#2e2e2e",
  black        = "#252321",
  white        = "#faebd7",
  grey         = "#686b6c",
  red          = "#ff7c7c",
  blue         = "#79b4da",
  magenta      = "#f56df6",
  orange       = "#ff8936",
  cyan         = "#4bb9b4",
}

local light = {
  fg           = "#252321",
  bg           = "#faebd7",
  bg_dim       = "#e0d1be",
  bg_dim2      = "#c4b6a3",
  black        = "#252321",
  white        = "#faebd7",
  red          = "#b62625",
  blue         = "#1a5bc4",
  grey         = "#686b6c",
  magenta      = "#9932cc",
  orange       = "#c04000",
  cyan         = "#007575",
}

local theme = dark
if vim.o.background == "light" then
  theme = light
end

return {
  normal = {
    a = { bg = theme.grey, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  insert = {
    a = { bg = theme.cyan, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  visual = {
    a = { bg = theme.orange, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  replace = {
    a = { bg = theme.red, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  command = {
    a = { bg = theme.magenta, fg = theme.bg },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  },
  inactive = {
    a = { bg = theme.bg_dim2, fg = theme.grey },
    b = { bg = theme.blue, fg = theme.fg },
    c = { bg = theme.cyan, fg = theme.fg }
  }
}

