local dark = {
  fg           = "#faebd7",
  bg           = "#353839",
  bg_dim       = "#393c3d",
  bg_dim2      = "#505354",
  black        = "#353839",
  white        = "#faebd7",
  grey         = "#c4b6a3",
  red          = "#d94070",
  blue         = "#6493d3",
  magenta      = "#a94fa6",
  orange       = "#ff7639",
  cyan         = "#5396a6",
}

local light = {
  fg           = "#353839",
  bg           = "#faebd7",
  bg_dim       = "#e0d1be",
  bg_dim2      = "#c4b6a3",
  black        = "#353839",
  white        = "#faebd7",
  red          = "#ba1d58",
  blue         = "#26619c",
  grey         = "#686b6c",
  magenta      = "#721772",
  orange       = "#c04000",
  cyan         = "#176372",
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
    a = { bg = theme.grey, fg = theme.bg_dim },
    b = { bg = theme.bg_dim, fg = theme.fg },
    c = { bg = theme.bg_dim2, fg = theme.fg }
  }
}

