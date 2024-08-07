local lush = require("lush")

local module = {}

local defaults = {
  italics = true,
}
module.config = defaults

function module.setup(options)
  module.config = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function module.load()
  local theme = require("lush_theme.zengarden")
  vim.g.colors_name = "zengarden"
  package.loaded["lush_theme.zengarden"] = nil

  if module.config.italics == true then
    theme = lush.extends({ theme }).with(function(injected_functions)
      local sym = injected_functions.sym
      return {
        Comment { theme.Comment, gui = "italic" },
        Keyword { theme.Keyword, gui = "italic" },
        Exception { theme.Exception, gui = "italic" },
        StorageClass { theme.StorageClass, gui = "italic" },
        DiagnosticError { theme.DiagnosticError, gui = "italic" },
        DiagnosticHint { theme.DiagnosticHint, gui = "italic" },
        DiagnosticInfo { theme.DiagnosticInfo, gui = "italic" },
        DiagnosticWarn { theme.DiagnosticWarn, gui = "italic" },
        DiagnosticOk { theme.DiagnosticOk, gui = "italic" },
        Special { theme.Special, gui = "italic" },
        Type { theme.Type, gui = "italic" },
        rustAttribute { theme.rustAttribute, gui = "italic" },
        --Identifier { theme.Identifier, gui = "italic" },
        sym("@namespace") { theme["@namespace"], gui = "italic" },
        sym("@comment.gitcommit") { theme["@comment.gitcommit"], gui = "italic" },
        sym("@keyword.gitcommit") { theme["@keyword.gitcommit"], gui = "italic" },
        sym("@lsp.type.namespace") { theme["@lsp.type.namespace"], gui = "italic" },
        sym("@lsp.type.struct") { theme["@lsp.type.struct"], gui = "italic" },
        sym("@lsp.type.class") { theme["@lsp.type.class"], gui = "italic" },
        sym("@lsp.type.macro.rust") { theme["@lsp.type.macro.rust"], gui = "italic" },
      }
    end)
  end

  lush(theme)
end

return module
