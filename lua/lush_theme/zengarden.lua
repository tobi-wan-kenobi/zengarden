--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP"`Yb
--    8888888P"                          I8  8I
--       88                              I8  8"
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8"8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8"  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8"_   8) ,d8     I8,
--  "Y8P"  "Y888888P""Y88P"`Y8P" "YY8P8P88P     `Y8
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require("lush").ify()`

local lush = require("lush")
local hsl = lush.hsl

local function shade(color, value)
  if vim.o.background == "light" then
    return color.darken(value)
  else
    return color.lighten(value)
  end
end

local colors = {
  dark = {
    grey = hsl("#505354"),
  },
  base = {
    grey = hsl("#686b6c"),
    white = hsl("#faebd7"),
    black = hsl("#353839"),
    black_soft = hsl("#393c3d"),
    black_hard = hsl("#2e3132"),
    green = hsl("#177245"),
    red = hsl("#ba1d58"),
    yellow = hsl("#967117"),
    blue = hsl("#26619c"),
    magenta = hsl("#721772"),
    cyan = hsl("#176372"),
    orange = hsl("#c04000"),
  },
  shade1 = {
    grey = hsl("#686b6c").lighten(15),
    green = hsl("#378c5d"),
    red = hsl("#d94070"),
    yellow = hsl("#b38a32"),
    blue = hsl("#477ab7"),
    magenta = hsl("#8d348c"),
    cyan = hsl("#377c8b"),
    orange = hsl("#e05b1f"),
  },
  shade2 = {
    green = hsl("#53a776"),
    red = hsl("#f85e89"),
    yellow = hsl("#d0a44c"),
    blue = hsl("#6493d3"),
    magenta = hsl("#a94fa6"),
    cyan = hsl("#5396a6"),
    orange = hsl("#ff7639"),
  },
}

local themes = {
  dark = {
    fg = colors.base.white,
    bg = colors.base.black_hard,
    comments = colors.shade1.grey,
    blue = colors.shade2.blue,
    red = colors.shade1.red,
    green = colors.shade2.green,
    orange = colors.shade2.orange,
    magenta = colors.shade1.magenta,
    yellow = colors.shade1.yellow,
    cyan = colors.shade2.cyan,
    error = colors.base.red,
    warn = colors.shade2.orange,
    info = colors.shade2.blue,
    hint = colors.shade2.cyan,
    ok = colors.shade2.green,
  },
  light = {
    fg = colors.base.black_hard,
    bg = colors.base.white,
    comments = colors.base.grey,
    blue = colors.base.blue,
    red = colors.shade1.red,
    green = colors.base.green,
    orange = colors.base.orange,
    magenta = colors.base.magenta,
    cyan = colors.shade1.cyan,
    yellow = colors.base.yellow,
    error = colors.base.red,
    warn = colors.base.orange,
    info = colors.base.blue,
    hint = colors.base.cyan,
    ok = colors.base.green,
  },
}

local theme = themes.dark
if vim.o.background == "light" then
  theme = themes.light
end

local variant = {
  fg = colors.shade2.cyan,
  bg = colors.base.cyan,
}

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = theme.bg.lighten(5) }, -- Columns set with "colorcolumn"
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see "conceallevel")
    -- Cursor         { }, -- Character under the cursor
    CurSearch      { gui = "bold,reverse" }, -- Highlighting a search pattern under the cursor (see "hlsearch")
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see "guicursor")
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = theme.bg.lighten(5) }, -- Screen-column at the cursor, when "cursorcolumn" is set.
    CursorLine     { bg = theme.bg.lighten(5) }, -- Screen-line at the cursor, when "cursorline" is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = theme.blue, gui = "bold" }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = theme.green }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = theme.blue }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = theme.red }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = theme.orange }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { bg = theme.error, fg = theme.bg }, -- Error messages on the command line
    VertSplit      { fg = theme.fg }, -- Column separating vertically split windows
    Folded         { bg = theme.bg.lighten(10) }, -- Line used for closed folds
    FoldColumn     { fg = theme.blue, gui = "bold" }, -- "foldcolumn"
    SignColumn     { }, -- Column where |signs| are displayed
    IncSearch      { bg = theme.yellow, fg = theme.bg }, -- "incsearch" highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr         { fg = theme.comments }, -- Line number for ":number" and ":#" commands, and when "number" or "relativenumber" option is set.
    LineNrAbove    { fg = colors.base.red }, -- Line number for when the "relativenumber" option is set, above the cursor line
    LineNrBelow    { fg = colors.base.green }, -- Line number for when the "relativenumber" option is set, below the cursor line
    CursorLineNr   { gui = "bold" }, -- Like LineNr when "cursorline" or "relativenumber" is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when "cursorline" is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when "cursorline" is set for the cursor line
    MatchParen     { fg = variant.fg, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- "showmode" message (e.g., "-- INSERT -- ")
    MsgArea        { bg = theme.bg.darken(10) }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of "display"
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg = theme.comments }, -- "@" at the end of the window, characters from "showbreak" and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn"t fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = theme.fg, bg = theme.bg }, -- Normal text
    NormalFloat    { fg = shade(theme.fg, 15), bg = shade(theme.bg, 15) }, -- Normal text in floating windows.
    FloatBorder    { fg = shade(theme.fg, 15), bg = shade(theme.bg, 15) }, -- Border of floating windows.
    FloatTitle     { fg = variant.fg, gui = "bold" }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { fg = colors.base.white, bg = colors.dark.grey }, -- Popup menu: Normal item.
    -- PmenuSel       { fg = colors.base.white, bg = variant.bg }, -- Popup menu: Selected item.
    Pmenu          { fg = shade(theme.fg, 15), bg = shade(theme.bg, 15) }, -- Popup menu: Normal item.
    PmenuSel       { fg = colors.base.white, bg = variant.bg }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg = variant.fg }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg = variant.bg }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = theme.fg, bg = theme.ok, gui = "bold" }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    --Search       { bg = yellow.darken(25), fg = bg }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    Search       { gui = "underline,bold" }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    SpecialKey     { fg = theme.orange }, -- Unprintable characters: text displayed differently from what it really is. But not "listchars" whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = variant.fg, bg = theme.bg }, -- Status line of current window
    StatusLineNC   { fg = theme.comments, bg = theme.bg }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { fg = variant.fg, bg = theme.bg, gui = "bold" }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = variant.fg, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { gui = "reverse" }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = theme.error }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in "listchars"
    Winseparator   { fg = colors.base.grey }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in "wildmenu" completion
    WinBar         { fg = variant.fg, bg = theme.bg }, -- Window bar of current window
    WinBarNC       { fg = theme.comments, bg = theme.bg }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = theme.comments, gui = "italic" }, -- Any comment

    Constant       { fg = theme.green }, -- (*) Any constant
    String         { fg = theme.green }, --   A string constant: "this is a string"
    Character      { fg = theme.magenta }, --   A character constant: "c", "\n"
    Number         { fg = theme.yellow }, --   A number constant: 234, 0xff
    Boolean        { fg = theme.blue }, --   A boolean constant: TRUE, false
    Float          { fg = theme.yellow }, --   A floating point constant: 2.3e10

    Identifier     { fg = theme.cyan }, -- (*) Any variable name
    Function       { fg = theme.cyan }, --   Function name (also: methods for classes)

    Statement      { fg = theme.red }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = theme.yellow, gui = "italic" }, --   any other keyword
    Exception      { fg = theme.red, gui = "italic" }, --   try, catch, throw

    PreProc        { fg = theme.blue }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = theme.yellow }, -- (*) int, long, char, etc.
    StorageClass   { fg = theme.yellow, gui = "italic" }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = theme.orange }, -- (*) Any special symbol
    SpecialChar    { fg = colors.base.orange }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. "\n")
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = theme.error, fg = theme.bg }, -- Any erroneous construct
    Todo           { bg = theme.yellow, fg = theme.bg }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client"s documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = theme.error, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = theme.warn, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = theme.info, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = theme.hint, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = theme.ok, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym("@text.literal")
    -- sym"@text.literal"
    -- sym"@text.literal"
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    sym"@text.todo"         { Todo }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { fg = dark_orange }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    sym"@keyword"           { fg = theme.blue }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    sym"@namespace"         { fg = theme.blue, gui = "italic" }, -- Identifier
    sym"@include"           { fg = theme.blue }, -- Include
    sym"@preproc"           { fg = theme.blue }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
