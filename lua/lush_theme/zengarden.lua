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
local config = require("zengarden").config

local function shade(color, value)
  if vim.o.background == "light" then
    return color.darken(value)
  else
    return color.lighten(value)
  end
end

local colors = {
  -- blacks, whites, greys
  ivory = hsl("#faebd7"),
  mist = hsl("#dddddd"),
  stone = hsl("#b2a9ac"),
  basalt = hsl("#242020"),
  jet = hsl("#343434"),
  slate = hsl("#353839"),
  gravel = hsl("#686b6c"),

  onyx = hsl("#030106"),
  rock = hsl("#2e2e2e"),
  obsidian = hsl("#000602"),
  black_chestnut = hsl("#252321"),
  kurobeni = hsl("#23191e"),
  ivory_light = hsl("#fffaf2"),

  dark = {
    pond = hsl("#4e98c5"),
    lake = hsl("#5fb3db"),
    coral = hsl("#c57673"),
    terracotta = hsl("#df907f"),
    bamboo = hsl("#50a27c"),
    shamrock = hsl("#74ba8b"),
    sand = hsl("#a78c41"),
    triandra_grass = hsl("#c4a35a"),
    lavender = hsl("#a27ebd"),
    bright_lavender = hsl("#b997d9"),
    sea_green = hsl("#2da29e"),
    verdigris = hsl("#4ebcb7"),
    clay = hsl("#bf7e52"),
    fallen_leaves = hsl("#d09c5f"),

    -- alts & additions
    sakura = hsl("#c57675"),
    lotus = hsl("#c1758b"),
    sunset = hsl("#c47865"),
    sunray = hsl("#919549"),
    oldwood = hsl("#c17b59"),
    redwood = hsl("#c07c56"),
    cherry = hsl("#c57579"),
    jade = hsl("#54a279"),
  },
  light = {
    pond = hsl("#1a6b95"),
    lake = hsl("#348bb1"),
    coral = hsl("#944a48"),
    terracotta = hsl("#b46959"),
    bamboo = hsl("#1b7451"),
    shamrock = hsl("#4c9165"),
    sand = hsl("#7a6006"),
    triandra_grass = hsl("#9b7b31"),
    lavender = hsl("#75528e"),
    bright_lavender = hsl("#9070af"),
    sea_green = hsl("#00726f"),
    verdigris = hsl("#13938f"),
    clay = hsl("#8e5225"),
    fallen_leaves = hsl("#a67537"),

    -- alts & additions
    sakura = hsl("#944a4a"),
    lotus = hsl("#90495f"),
    sunset = hsl("#934c3b"),
    sunray = hsl("#656817"),
    oldwood = hsl("#914f2e"),
    redwood = hsl("#90502a"),
    cherry = hsl("#94494e"),
    jade = hsl("#22744e"),
  },
}

local themes = {
  dark = {
    fg = colors.ivory,
    fg_dim = colors.stone,
    bg = colors.basalt,
    bg_alt = colors.jet,
    comments = colors.gravel,
    error = colors.dark.coral,
    info = colors.dark.pond,
    hint = colors.dark.sea_green,
    ok = colors.dark.bamboo,
    warn = colors.dark.sunray,
  },
  light = {
    fg = colors.basalt,
    fg_dim = colors.slate,
    bg = colors.ivory,
    bg_alt = colors.mist,
    comments = colors.gravel,
    error = colors.light.error,
    info = colors.light.pond,
    hint = colors.light.sea_green,
    ok = colors.light.bamboo,
    warn = colors.light.sunray,
  },
}

local theme = themes.dark
local color = colors.dark
if vim.o.background == "light" then
  color = colors.light
  theme = themes.light
end

local variants = {
  cyan = {
    bg = color.sea_green,
    fg = color.verdigris,
  },
  orange = {
    bg = color.clay,
    fg = color.fallen_leaves,
  },
  yellow = {
    bg = color.sand,
    fg = color.triandra_grass,
  },
  magenta = {
    bg = color.lavender,
    fg = color.bright_lavender,
  },
  blue = {
    bg = color.pond,
    fg = color.lake,
  },
  green = {
    bg = color.bamboo,
    fg = color.shamrock,
  },
}

if config == nil then
  config = { variant = "cyan" }
end

if variants[config.variant] == nil then
  config.variant = "cyan"
end

local variant = variants[config.variant]

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = theme.bg_alt }, -- Columns set with "colorcolumn"
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see "conceallevel")
    -- Cursor         { }, -- Character under the cursor
    CurSearch      { gui = "bold,reverse" }, -- Highlighting a search pattern under the cursor (see "hlsearch")
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see "guicursor")
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = theme.bg_alt }, -- Screen-column at the cursor, when "cursorcolumn" is set.
    CursorLine     { bg = theme.bg_alt }, -- Screen-line at the cursor, when "cursorline" is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = color.pond, gui = "bold" }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = color.bamboo }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = color.pond }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = color.coral }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = color.sunray }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { bg = theme.error, fg = theme.bg }, -- Error messages on the command line
    VertSplit      { fg = theme.fg_dim }, -- Column separating vertically split windows
    Folded         { bg = theme.bg_alt }, -- Line used for closed folds
    FoldColumn     { fg = color.lake }, -- "foldcolumn"
    SignColumn     { bg = theme.bg }, -- Column where |signs| are displayed
    IncSearch      { bg = color.sand, fg = theme.bg }, -- "incsearch" highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr         { fg = theme.comments }, -- Line number for ":number" and ":#" commands, and when "number" or "relativenumber" option is set.
    LineNrAbove    { fg = color.terracotta }, -- Line number for when the "relativenumber" option is set, above the cursor line
    LineNrBelow    { fg = color.shamrock }, -- Line number for when the "relativenumber" option is set, below the cursor line
    CursorLineNr   { fg = theme.fg_dim, bg = theme.bg_alt }, -- Like LineNr when "cursorline" or "relativenumber" is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when "cursorline" is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when "cursorline" is set for the cursor line
    MatchParen     { fg = variant.bg }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- "showmode" message (e.g., "-- INSERT -- ")
    MsgArea        { bg = theme.bg, fg = theme.fg_dim }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of "display"
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg = theme.comments }, -- "@" at the end of the window, characters from "showbreak" and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn"t fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = theme.fg, bg = theme.bg }, -- Normal text
    NormalFloat    { fg = theme.fg, bg = theme.bg_alt }, -- Normal text in floating windows.
    FloatBorder    { fg = theme.fg_dim, bg = theme.bg }, -- Border of floating windows.
    FloatTitle     { fg = variant.fg }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { fg = theme.fg, bg = theme.bg_alt }, -- Popup menu: Normal item.
    PmenuSel       { fg = variant.fg, bg = theme.bg_alt }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { fg = variant.fg, bg = theme.bg_alt }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg = colors.gravel }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg = variant.fg }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = theme.fg, bg = theme.ok, gui = "bold" }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    --Search       { bg = yellow.darken(25), fg = bg }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    Search       { fg = color.triandra_grass, bg = theme.bg_alt, gui = "underline,bold" }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    SpecialKey     { fg = color.clay }, -- Unprintable characters: text displayed differently from what it really is. But not "listchars" whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = variant.fg, bg = theme.bg }, -- Status line of current window
    StatusLineNC   { fg = theme.comments, bg = theme.bg }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { fg = variant.fg, bg = theme.bg, gui = "bold" }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = variant.fg }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { gui = "reverse" }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = theme.error }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in "listchars"
    Winseparator   { fg = colors.grey }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
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

    Comment        { fg = theme.comments }, -- Any comment

    Constant       { fg = color.clay }, -- (*) Any constant
    String         { fg = color.bamboo }, --   A string constant: "this is a string"
    Character      { fg = color.lavender }, --   A character constant: "c", "\n"
    Number         { fg = color.sand }, --   A number constant: 234, 0xff
    Boolean        { fg = color.lake }, --   A boolean constant: TRUE, false
    Float          { fg = color.triandra_grass }, --   A floating point constant: 2.3e10

    Identifier     { fg = color.sunray }, -- (*) Any variable name
    Function       { fg = color.sea_green }, --   Function name (also: methods for classes)

    Statement      { fg = color.jade }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = color.sand }, --   any other keyword
    Exception      { fg = color.lotus }, --   try, catch, throw

    PreProc        { fg = color.pond }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = color.triandra_grass }, -- (*) int, long, char, etc.
    StorageClass   { fg = color.triandra_grass }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = color.clay }, -- (*) Any special symbol
    SpecialChar    { fg = shade(color.clay, 25) }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. "\n")
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = theme.error, fg = theme.bg }, -- Any erroneous construct
    Todo           { bg = color.triandra_grass, fg = theme.bg }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
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
    DiagnosticError            { fg = theme.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = theme.warn }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = theme.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = theme.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = theme.ok }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
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
    sym"@keyword"           { fg = color.sand }, -- Keyword
    sym"@keyword.import"    { fg = color.pond },
    sym"@lsp.type.namespace" { fg = color.pond },
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg = theme.fg }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    sym"@namespace"         { fg = color.lake }, -- Identifier
    sym"@include"           { fg = color.pond }, -- Include
    sym"@preproc"           { fg = color.pond }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
