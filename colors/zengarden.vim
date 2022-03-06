" copied from gruvbox, just replaced the colors
" https://github.com/morhetz/gruvbox
"
" many thanks to morhetz for an **awesome** colorscheme (gruvbox)

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='zengarden'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

if !exists('g:zengarden_bold')
  let g:zengarden_bold=1
endif
if !exists('g:zengarden_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:zengarden_italic=1
  else
    let g:zengarden_italic=0
  endif
endif
if !exists('g:zengarden_undercurl')
  let g:zengarden_undercurl=1
endif
if !exists('g:zengarden_underline')
  let g:zengarden_underline=1
endif
if !exists('g:zengarden_inverse')
  let g:zengarden_inverse=1
endif

if !exists('g:zengarden_guisp_fallback') || index(['fg', 'bg'], g:zengarden_guisp_fallback) == -1
  let g:zengarden_guisp_fallback='NONE'
endif

if !exists('g:zengarden_improved_strings')
  let g:zengarden_improved_strings=0
endif

if !exists('g:zengarden_improved_warnings')
  let g:zengarden_improved_warnings=0
endif

if !exists('g:zengarden_termcolors')
  let g:zengarden_termcolors=256
endif

if !exists('g:zengarden_invert_indent_guides')
  let g:zengarden_invert_indent_guides=0
endif

if !exists('g:zengarden_contrast_dark')
  let g:zengarden_contrast_dark='medium'
endif

if !exists('g:zengarden_contrast_light')
  let g:zengarden_contrast_light='medium'
endif

let s:is_dark=(&background == 'dark')

let s:zg = {}

let s:zg.dark0_hard  = ['#2e3132', 236]
let s:zg.dark0       = ['#353839', 235]
let s:zg.dark0_soft  = ['#393c3d', 234]
let s:zg.dark1       = ['#444748', 237]
let s:zg.dark2       = ['#505354', 239]
let s:zg.dark3       = ['#5c5f60', 241]
let s:zg.dark4       = ['#686b6c', 243]
let s:zg.dark4_256   = ['#686b6c', 243]

let s:zg.gray_245    = ['#747879', 245]
let s:zg.gray_244    = ['#818485', 244]

let s:zg.light0_hard = ['#f4ece2', 228]
let s:zg.light0      = ['#faebd7', 229]
let s:zg.light0_soft = ['#e7cda9', 230]
let s:zg.light1      = ['#ebddc9', 223]
let s:zg.light2      = ['#e0d1be', 250]
let s:zg.light3      = ['#d2c4b0', 248]
let s:zg.light4      = ['#c4b6a3', 246]
let s:zg.light4_256  = ['#c4b6a3', 246]

let s:zg.bright_red     = ['#f85e89', 167]
let s:zg.bright_green   = ['#53a776', 142]
let s:zg.bright_yellow  = ['#d0a44c', 214]
let s:zg.bright_blue    = ['#6493d3', 109]
let s:zg.bright_purple  = ['#a94fa6', 175]
let s:zg.bright_aqua    = ['#5396a6', 108]
let s:zg.bright_orange  = ['#ff7639', 208]

let s:zg.neutral_red    = ['#d94070', 124]
let s:zg.neutral_green  = ['#378c5d', 106]
let s:zg.neutral_yellow = ['#b38a32', 172]
let s:zg.neutral_blue   = ['#477ab7', 66]
let s:zg.neutral_purple = ['#8d348c', 132]
let s:zg.neutral_aqua   = ['#377c8b', 72]
let s:zg.neutral_orange = ['#e05b1f', 166]

let s:zg.faded_red      = ['#ba1d58', 88]
let s:zg.faded_green    = ['#177245', 100]
let s:zg.faded_yellow   = ['#967117', 136]
let s:zg.faded_blue     = ['#26619c', 24]
let s:zg.faded_purple   = ['#721772', 96]
let s:zg.faded_aqua     = ['#176372', 66]
let s:zg.faded_orange   = ['#c04000', 130]

let s:bold = 'bold,'
if g:zengarden_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:zengarden_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:zengarden_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:zengarden_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:zengarden_inverse == 0
  let s:inverse = ''
endif

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

if s:is_dark
  let s:bg0  = s:zg.dark0
  if g:zengarden_contrast_dark == 'soft'
    let s:bg0  = s:zg.dark0_soft
  elseif g:zengarden_contrast_dark == 'hard'
    let s:bg0  = s:zg.dark0_hard
  endif

  let s:bg1  = s:zg.dark1
  let s:bg2  = s:zg.dark2
  let s:bg3  = s:zg.dark3
  let s:bg4  = s:zg.dark4

  let s:gray = s:zg.gray_245

  let s:fg0 = s:zg.light0
  let s:fg1 = s:zg.light1
  let s:fg2 = s:zg.light2
  let s:fg3 = s:zg.light3
  let s:fg4 = s:zg.light4

  let s:fg4_256 = s:zg.light4_256

  let s:red    = s:zg.bright_red
  let s:green  = s:zg.bright_green
  let s:yellow = s:zg.bright_yellow
  let s:blue   = s:zg.bright_blue
  let s:purple = s:zg.bright_purple
  let s:aqua   = s:zg.bright_aqua
  let s:orange = s:zg.bright_orange
else
  let s:bg0  = s:zg.light0
  if g:zengarden_contrast_light == 'soft'
    let s:bg0  = s:zg.light0_soft
  elseif g:zengarden_contrast_light == 'hard'
    let s:bg0  = s:zg.light0_hard
  endif

  let s:bg1  = s:zg.light1
  let s:bg2  = s:zg.light2
  let s:bg3  = s:zg.light3
  let s:bg4  = s:zg.light4

  let s:gray = s:zg.gray_244

  let s:fg0 = s:zg.dark0
  let s:fg1 = s:zg.dark1
  let s:fg2 = s:zg.dark2
  let s:fg3 = s:zg.dark3
  let s:fg4 = s:zg.dark4

  let s:fg4_256 = s:zg.dark4_256

  let s:red    = s:zg.faded_red
  let s:green  = s:zg.faded_green
  let s:yellow = s:zg.faded_yellow
  let s:blue   = s:zg.faded_blue
  let s:purple = s:zg.faded_purple
  let s:aqua   = s:zg.faded_aqua
  let s:orange = s:zg.faded_orange
endif

if g:zengarden_termcolors == 16
  let s:bg0[1]    = 0
  let s:fg4[1]    = 7
  let s:gray[1]   = 8
  let s:red[1]    = 9
  let s:green[1]  = 10
  let s:yellow[1] = 11
  let s:blue[1]   = 12
  let s:purple[1] = 13
  let s:aqua[1]   = 14
  let s:fg1[1]    = 15
endif

let s:zg.bg0 = s:bg0
let s:zg.bg1 = s:bg1
let s:zg.bg2 = s:bg2
let s:zg.bg3 = s:bg3
let s:zg.bg4 = s:bg4

let s:zg.gray = s:gray

let s:zg.fg0 = s:fg0
let s:zg.fg1 = s:fg1
let s:zg.fg2 = s:fg2
let s:zg.fg3 = s:fg3
let s:zg.fg4 = s:fg4

let s:zg.fg4_256 = s:fg4_256

let s:zg.red    = s:red
let s:zg.green  = s:green
let s:zg.yellow = s:yellow
let s:zg.blue   = s:blue
let s:zg.purple = s:purple
let s:zg.aqua   = s:aqua
let s:zg.orange = s:orange

let g:terminal_ansi_colors = [
	\ s:bg0[0], s:zg.neutral_red[0], s:zg.neutral_green[0],
	\ s:zg.neutral_yellow[0], s:zg.neutral_blue[0],
	\ s:zg.neutral_purple[0], s:zg.neutral_aqua[0],
	\ s:fg4[0], s:gray[0], s:red[0], s:green[0],
	\ s:yellow[0], s:blue[0], s:purple[0], s:aqua[0], s:fg1[0] ]

if has('nvim')
  let g:terminal_color_0 = s:bg0[0]
  let g:terminal_color_8 = s:gray[0]

  let g:terminal_color_1 = s:zg.neutral_red[0]
  let g:terminal_color_9 = s:red[0]

  let g:terminal_color_2 = s:zg.neutral_green[0]
  let g:terminal_color_10 = s:green[0]

  let g:terminal_color_3 = s:zg.neutral_yellow[0]
  let g:terminal_color_11 = s:yellow[0]

  let g:terminal_color_4 = s:zg.neutral_blue[0]
  let g:terminal_color_12 = s:blue[0]

  let g:terminal_color_5 = s:zg.neutral_purple[0]
  let g:terminal_color_13 = s:purple[0]

  let g:terminal_color_6 = s:zg.neutral_aqua[0]
  let g:terminal_color_14 = s:aqua[0]

  let g:terminal_color_7 = s:fg4[0]
  let g:terminal_color_15 = s:fg1[0]
endif

" }}}
" Overload Setting: {{{

let s:hls_cursor = s:orange
if exists('g:zengarden_hls_cursor')
  let s:hls_cursor = get(s:zg, g:zengarden_hls_cursor)
endif

let s:number_column = s:none
if exists('g:zengarden_number_column')
  let s:number_column = get(s:zg, g:zengarden_number_column)
endif

let s:sign_column = s:bg1

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:zengarden_sign_column')
    let s:sign_column = get(s:zg, g:zengarden_sign_column)
  endif
endif

let s:color_column = s:bg1
if exists('g:zengarden_color_column')
  let s:color_column = get(s:zg, g:zengarden_color_column)
endif

let s:vert_split = s:bg0
if exists('g:zengarden_vert_split')
  let s:vert_split = get(s:zg, g:zengarden_vert_split)
endif

let s:invert_signs = ''
if exists('g:zengarden_invert_signs')
  if g:zengarden_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:zengarden_invert_selection')
  if g:zengarden_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:zengarden_invert_tabline')
  if g:zengarden_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:zengarden_italicize_comments')
  if g:zengarden_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:zengarden_italicize_strings')
  if g:zengarden_italicize_strings == 1
    let s:italicize_strings = s:italic
  endif
endif

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:zengarden_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:zengarden_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

" }}}
" Zengarden Hi Groups: {{{

" memoize common hi groups
call s:HL('ZengardenFg0', s:fg0)
call s:HL('ZengardenFg1', s:fg1)
call s:HL('ZengardenFg2', s:fg2)
call s:HL('ZengardenFg3', s:fg3)
call s:HL('ZengardenFg4', s:fg4)
call s:HL('ZengardenGray', s:gray)
call s:HL('ZengardenBg0', s:bg0)
call s:HL('ZengardenBg1', s:bg1)
call s:HL('ZengardenBg2', s:bg2)
call s:HL('ZengardenBg3', s:bg3)
call s:HL('ZengardenBg4', s:bg4)

call s:HL('ZengardenRed', s:red)
call s:HL('ZengardenRedBold', s:red, s:none, s:bold)
call s:HL('ZengardenGreen', s:green)
call s:HL('ZengardenGreenBold', s:green, s:none, s:bold)
call s:HL('ZengardenYellow', s:yellow)
call s:HL('ZengardenYellowBold', s:yellow, s:none, s:bold)
call s:HL('ZengardenBlue', s:blue)
call s:HL('ZengardenBlueBold', s:blue, s:none, s:bold)
call s:HL('ZengardenPurple', s:purple)
call s:HL('ZengardenPurpleBold', s:purple, s:none, s:bold)
call s:HL('ZengardenAqua', s:aqua)
call s:HL('ZengardenAquaBold', s:aqua, s:none, s:bold)
call s:HL('ZengardenOrange', s:orange)
call s:HL('ZengardenOrangeBold', s:orange, s:none, s:bold)

call s:HL('ZengardenRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('ZengardenGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('ZengardenYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('ZengardenBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('ZengardenPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('ZengardenAquaSign', s:aqua, s:sign_column, s:invert_signs)
call s:HL('ZengardenOrangeSign', s:orange, s:sign_column, s:invert_signs)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:fg1, s:bg0)

" Correct background (see issue #7):
" --- Problem with changing between dark and light on 256 color terminal
" --- https://github.com/morhetz/zengarden/issues/7
if s:is_dark
  set background=dark
else
  set background=light
endif

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bg1)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:bg4, s:bg1, s:invert_tabline)
  " Active tab page label
  call s:HL('TabLineSel', s:green, s:bg1, s:invert_tabline)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:none, s:bg3, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:color_column)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, s:bg1)
endif

hi! link NonText ZengardenBg2
hi! link SpecialKey ZengardenBg2

call s:HL('Visual',    s:none,  s:bg3, s:invert_selection)
hi! link VisualNOS Visual

call s:HL('Search',    s:yellow, s:bg0, s:inverse)
call s:HL('IncSearch', s:hls_cursor, s:bg0, s:inverse)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bg2, s:fg1, s:inverse)
call s:HL('StatusLineNC', s:bg1, s:fg4, s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:bg3, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:bg2, s:bold)

" Directory names, special names in listing
hi! link Directory ZengardenGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title ZengardenGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:bg0, s:red, s:bold)
" More prompt: -- More --
hi! link MoreMsg ZengardenYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg ZengardenYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question ZengardenOrangeBold
" Warning messages
hi! link WarningMsg ZengardenRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:bg4, s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg1, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg1)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

if g:zengarden_improved_strings == 0
  hi! link Special ZengardenOrange
else
  call s:HL('Special', s:orange, s:bg1, s:italicize_strings)
endif

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('Error', s:red, s:vim_bg, s:bold . s:inverse)

" Generic statement
hi! link Statement ZengardenRed
" if, then, else, endif, swicth, etc.
hi! link Conditional ZengardenRed
" for, do, while, etc.
hi! link Repeat ZengardenRed
" case, default, etc.
hi! link Label ZengardenRed
" try, catch, throw
hi! link Exception ZengardenRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword ZengardenRed

" Variable name
hi! link Identifier ZengardenBlue
" Function name
hi! link Function ZengardenGreenBold

" Generic preprocessor
hi! link PreProc ZengardenAqua
" Preprocessor #include
hi! link Include ZengardenAqua
" Preprocessor #define
hi! link Define ZengardenAqua
" Same as Define
hi! link Macro ZengardenAqua
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit ZengardenAqua

" Generic constant
hi! link Constant ZengardenPurple
" Character constant: 'c', '/n'
hi! link Character ZengardenPurple
" String constant: "this is a string"
if g:zengarden_improved_strings == 0
  call s:HL('String',  s:green, s:none, s:italicize_strings)
else
  call s:HL('String',  s:fg1, s:bg1, s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean ZengardenPurple
" Number constant: 234, 0xff
hi! link Number ZengardenPurple
" Floating point constant: 2.3e10
hi! link Float ZengardenPurple

" Generic type
hi! link Type ZengardenYellow
" static, register, volatile, etc
hi! link StorageClass ZengardenOrange
" struct, union, enum, etc.
hi! link Structure ZengardenAqua
" typedef
hi! link Typedef ZengardenYellow

" }}}
" Completion Menu: {{{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:fg1, s:bg2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bg2, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:bg2)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:bg4)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, s:bg0, s:inverse)
call s:HL('DiffAdd',    s:green, s:bg0, s:inverse)
"call s:HL('DiffChange', s:bg0, s:blue)
"call s:HL('DiffText',   s:bg0, s:yellow)

" Alternative setting
call s:HL('DiffChange', s:aqua, s:bg0, s:inverse)
call s:HL('DiffText',   s:yellow, s:bg0, s:inverse)

" }}}
" Spelling: {{{

if has("spell")
  " Not capitalised word, or compile warnings
  if g:zengarden_improved_warnings == 0
    call s:HL('SpellCap',   s:none, s:none, s:undercurl, s:red)
  else
    call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  endif
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:aqua)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:purple)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" EasyMotion: {{{

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" }}}
" Sneak: {{{

hi! link Sneak Search
hi! link SneakLabel Search

" }}}
" Indent Guides: {{{

if !exists('g:indent_guides_auto_colors')
  let g:indent_guides_auto_colors = 0
endif

if g:indent_guides_auto_colors == 0
  if g:zengarden_invert_indent_guides == 0
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg1)
  else
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2, s:inverse)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg3, s:inverse)
  endif
endif

" }}}
" IndentLine: {{{

if !exists('g:indentLine_color_term')
  let g:indentLine_color_term = s:bg2[1]
endif
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:bg2[0]
endif

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: {{{

hi! link GitGutterAdd ZengardenGreenSign
hi! link GitGutterChange ZengardenAquaSign
hi! link GitGutterDelete ZengardenRedSign
hi! link GitGutterChangeDelete ZengardenAquaSign

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile ZengardenGreen
hi! link gitcommitDiscardedFile ZengardenRed

" }}}
" Signify: {{{

hi! link SignifySignAdd ZengardenGreenSign
hi! link SignifySignChange ZengardenAquaSign
hi! link SignifySignDelete ZengardenRedSign

" }}}
" Syntastic: {{{

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign ZengardenRedSign
hi! link SyntasticWarningSign ZengardenYellowSign

" }}}
" Signature: {{{
hi! link SignatureMarkText   ZengardenBlueSign
hi! link SignatureMarkerText ZengardenPurpleSign

" }}}
" ShowMarks: {{{

hi! link ShowMarksHLl ZengardenBlueSign
hi! link ShowMarksHLu ZengardenBlueSign
hi! link ShowMarksHLo ZengardenBlueSign
hi! link ShowMarksHLm ZengardenBlueSign

" }}}
" CtrlP: {{{

hi! link CtrlPMatch ZengardenYellow
hi! link CtrlPNoEntries ZengardenRed
hi! link CtrlPPrtBase ZengardenBg2
hi! link CtrlPPrtCursor ZengardenBlue
hi! link CtrlPLinePre ZengardenBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" }}}
" Startify: {{{

hi! link StartifyBracket ZengardenFg3
hi! link StartifyFile ZengardenFg1
hi! link StartifyNumber ZengardenBlue
hi! link StartifyPath ZengardenGray
hi! link StartifySlash ZengardenGray
hi! link StartifySection ZengardenYellow
hi! link StartifySpecial ZengardenBg2
hi! link StartifyHeader ZengardenOrange
hi! link StartifyFooter ZengardenBg2

" }}}
" Vimshell: {{{

let g:vimshell_escape_colors = [
  \ s:bg4[0], s:red[0], s:green[0], s:yellow[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg4[0],
  \ s:bg0[0], s:red[0], s:green[0], s:orange[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg0[0]
  \ ]

" }}}
" BufTabLine: {{{

call s:HL('BufTabLineCurrent', s:bg0, s:fg4)
call s:HL('BufTabLineActive', s:fg4, s:bg2)
call s:HL('BufTabLineHidden', s:bg4, s:bg1)
call s:HL('BufTabLineFill', s:bg0, s:bg0)

" }}}
" Asynchronous Lint Engine: {{{

call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)

hi! link ALEErrorSign ZengardenRedSign
hi! link ALEWarningSign ZengardenYellowSign
hi! link ALEInfoSign ZengardenBlueSign

" }}}
" Dirvish: {{{

hi! link DirvishPathTail ZengardenAqua
hi! link DirvishArg ZengardenYellow

" }}}
" Netrw: {{{

hi! link netrwDir ZengardenAqua
hi! link netrwClassify ZengardenAqua
hi! link netrwLink ZengardenGray
hi! link netrwSymLink ZengardenFg1
hi! link netrwExe ZengardenYellow
hi! link netrwComment ZengardenGray
hi! link netrwList ZengardenBlue
hi! link netrwHelpCmd ZengardenAqua
hi! link netrwCmdSep ZengardenFg3
hi! link netrwVersion ZengardenGreen

" }}}
" NERDTree: {{{

hi! link NERDTreeDir ZengardenAqua
hi! link NERDTreeDirSlash ZengardenAqua

hi! link NERDTreeOpenable ZengardenOrange
hi! link NERDTreeClosable ZengardenOrange

hi! link NERDTreeFile ZengardenFg1
hi! link NERDTreeExecFile ZengardenYellow

hi! link NERDTreeUp ZengardenGray
hi! link NERDTreeCWD ZengardenGreen
hi! link NERDTreeHelp ZengardenFg1

hi! link NERDTreeToggleOn ZengardenGreen
hi! link NERDTreeToggleOff ZengardenRed

" }}}
" Vim Multiple Cursors: {{{

call s:HL('multiple_cursors_cursor', s:none, s:none, s:inverse)
call s:HL('multiple_cursors_visual', s:none, s:bg2)

" }}}
" coc.nvim: {{{

hi! link CocErrorSign ZengardenRedSign
hi! link CocWarningSign ZengardenOrangeSign
hi! link CocInfoSign ZengardenYellowSign
hi! link CocHintSign ZengardenBlueSign
hi! link CocErrorFloat ZengardenRed
hi! link CocWarningFloat ZengardenOrange
hi! link CocInfoFloat ZengardenYellow
hi! link CocHintFloat ZengardenBlue
hi! link CocDiagnosticsError ZengardenRed
hi! link CocDiagnosticsWarning ZengardenOrange
hi! link CocDiagnosticsInfo ZengardenYellow
hi! link CocDiagnosticsHint ZengardenBlue

hi! link CocSelectedText ZengardenRed
hi! link CocCodeLens ZengardenGray

call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:orange)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded ZengardenGreen
hi! link diffRemoved ZengardenRed
hi! link diffChanged ZengardenAqua

hi! link diffFile ZengardenOrange
hi! link diffNewFile ZengardenYellow

hi! link diffLine ZengardenBlue

" }}}
" Html: {{{

hi! link htmlTag ZengardenBlue
hi! link htmlEndTag ZengardenBlue

hi! link htmlTagName ZengardenAquaBold
hi! link htmlArg ZengardenAqua

hi! link htmlScriptTag ZengardenPurple
hi! link htmlTagN ZengardenFg1
hi! link htmlSpecialTagName ZengardenAquaBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar ZengardenOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag ZengardenBlue
hi! link xmlEndTag ZengardenBlue
hi! link xmlTagName ZengardenBlue
hi! link xmlEqual ZengardenBlue
hi! link docbkKeyword ZengardenAquaBold

hi! link xmlDocTypeDecl ZengardenGray
hi! link xmlDocTypeKeyword ZengardenPurple
hi! link xmlCdataStart ZengardenGray
hi! link xmlCdataCdata ZengardenPurple
hi! link dtdFunction ZengardenGray
hi! link dtdTagName ZengardenPurple

hi! link xmlAttrib ZengardenAqua
hi! link xmlProcessingDelim ZengardenGray
hi! link dtdParamEntityPunct ZengardenGray
hi! link dtdParamEntityDPunct ZengardenGray
hi! link xmlAttribPunct ZengardenGray

hi! link xmlEntity ZengardenOrange
hi! link xmlEntityPunct ZengardenOrange
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:fg4_256, s:none, s:bold . s:italicize_comments)

hi! link vimNotation ZengardenOrange
hi! link vimBracket ZengardenOrange
hi! link vimMapModKey ZengardenOrange
hi! link vimFuncSID ZengardenFg3
hi! link vimSetSep ZengardenFg3
hi! link vimSep ZengardenFg3
hi! link vimContinue ZengardenFg3

" }}}
" Clojure: {{{

hi! link clojureKeyword ZengardenBlue
hi! link clojureCond ZengardenOrange
hi! link clojureSpecial ZengardenOrange
hi! link clojureDefine ZengardenOrange

hi! link clojureFunc ZengardenYellow
hi! link clojureRepeat ZengardenYellow
hi! link clojureCharacter ZengardenAqua
hi! link clojureStringEscape ZengardenAqua
hi! link clojureException ZengardenRed

hi! link clojureRegexp ZengardenAqua
hi! link clojureRegexpEscape ZengardenAqua
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen ZengardenFg3
hi! link clojureAnonArg ZengardenYellow
hi! link clojureVariable ZengardenBlue
hi! link clojureMacro ZengardenOrange

hi! link clojureMeta ZengardenYellow
hi! link clojureDeref ZengardenYellow
hi! link clojureQuote ZengardenYellow
hi! link clojureUnquote ZengardenYellow

" }}}
" C: {{{

hi! link cOperator ZengardenPurple
hi! link cStructure ZengardenOrange

" }}}
" Python: {{{

hi! link pythonBuiltin ZengardenOrange
hi! link pythonBuiltinObj ZengardenOrange
hi! link pythonBuiltinFunc ZengardenOrange
hi! link pythonFunction ZengardenAqua
hi! link pythonDecorator ZengardenRed
hi! link pythonInclude ZengardenBlue
hi! link pythonImport ZengardenBlue
hi! link pythonRun ZengardenBlue
hi! link pythonCoding ZengardenBlue
hi! link pythonOperator ZengardenRed
hi! link pythonException ZengardenRed
hi! link pythonExceptions ZengardenPurple
hi! link pythonBoolean ZengardenPurple
hi! link pythonDot ZengardenFg3
hi! link pythonConditional ZengardenRed
hi! link pythonRepeat ZengardenRed
hi! link pythonDottedName ZengardenGreenBold

" }}}
" CSS: {{{

hi! link cssBraces ZengardenBlue
hi! link cssFunctionName ZengardenYellow
hi! link cssIdentifier ZengardenOrange
hi! link cssClassName ZengardenGreen
hi! link cssColor ZengardenBlue
hi! link cssSelectorOp ZengardenBlue
hi! link cssSelectorOp2 ZengardenBlue
hi! link cssImportant ZengardenGreen
hi! link cssVendor ZengardenFg1

hi! link cssTextProp ZengardenAqua
hi! link cssAnimationProp ZengardenAqua
hi! link cssUIProp ZengardenYellow
hi! link cssTransformProp ZengardenAqua
hi! link cssTransitionProp ZengardenAqua
hi! link cssPrintProp ZengardenAqua
hi! link cssPositioningProp ZengardenYellow
hi! link cssBoxProp ZengardenAqua
hi! link cssFontDescriptorProp ZengardenAqua
hi! link cssFlexibleBoxProp ZengardenAqua
hi! link cssBorderOutlineProp ZengardenAqua
hi! link cssBackgroundProp ZengardenAqua
hi! link cssMarginProp ZengardenAqua
hi! link cssListProp ZengardenAqua
hi! link cssTableProp ZengardenAqua
hi! link cssFontProp ZengardenAqua
hi! link cssPaddingProp ZengardenAqua
hi! link cssDimensionProp ZengardenAqua
hi! link cssRenderProp ZengardenAqua
hi! link cssColorProp ZengardenAqua
hi! link cssGeneratedContentProp ZengardenAqua

" }}}
" JavaScript: {{{

hi! link javaScriptBraces ZengardenFg1
hi! link javaScriptFunction ZengardenAqua
hi! link javaScriptIdentifier ZengardenRed
hi! link javaScriptMember ZengardenBlue
hi! link javaScriptNumber ZengardenPurple
hi! link javaScriptNull ZengardenPurple
hi! link javaScriptParens ZengardenFg3

" }}}
" YAJS: {{{

hi! link javascriptImport ZengardenAqua
hi! link javascriptExport ZengardenAqua
hi! link javascriptClassKeyword ZengardenAqua
hi! link javascriptClassExtends ZengardenAqua
hi! link javascriptDefault ZengardenAqua

hi! link javascriptClassName ZengardenYellow
hi! link javascriptClassSuperName ZengardenYellow
hi! link javascriptGlobal ZengardenYellow

hi! link javascriptEndColons ZengardenFg1
hi! link javascriptFuncArg ZengardenFg1
hi! link javascriptGlobalMethod ZengardenFg1
hi! link javascriptNodeGlobal ZengardenFg1
hi! link javascriptBOMWindowProp ZengardenFg1
hi! link javascriptArrayMethod ZengardenFg1
hi! link javascriptArrayStaticMethod ZengardenFg1
hi! link javascriptCacheMethod ZengardenFg1
hi! link javascriptDateMethod ZengardenFg1
hi! link javascriptMathStaticMethod ZengardenFg1

" hi! link javascriptProp ZengardenFg1
hi! link javascriptURLUtilsProp ZengardenFg1
hi! link javascriptBOMNavigatorProp ZengardenFg1
hi! link javascriptDOMDocMethod ZengardenFg1
hi! link javascriptDOMDocProp ZengardenFg1
hi! link javascriptBOMLocationMethod ZengardenFg1
hi! link javascriptBOMWindowMethod ZengardenFg1
hi! link javascriptStringMethod ZengardenFg1

hi! link javascriptVariable ZengardenOrange
" hi! link javascriptVariable ZengardenRed
" hi! link javascriptIdentifier ZengardenOrange
" hi! link javascriptClassSuper ZengardenOrange
hi! link javascriptIdentifier ZengardenOrange
hi! link javascriptClassSuper ZengardenOrange

" hi! link javascriptFuncKeyword ZengardenOrange
" hi! link javascriptAsyncFunc ZengardenOrange
hi! link javascriptFuncKeyword ZengardenAqua
hi! link javascriptAsyncFunc ZengardenAqua
hi! link javascriptClassStatic ZengardenOrange

hi! link javascriptOperator ZengardenRed
hi! link javascriptForOperator ZengardenRed
hi! link javascriptYield ZengardenRed
hi! link javascriptExceptions ZengardenRed
hi! link javascriptMessage ZengardenRed

hi! link javascriptTemplateSB ZengardenAqua
hi! link javascriptTemplateSubstitution ZengardenFg1

" hi! link javascriptLabel ZengardenBlue
" hi! link javascriptObjectLabel ZengardenBlue
" hi! link javascriptPropertyName ZengardenBlue
hi! link javascriptLabel ZengardenFg1
hi! link javascriptObjectLabel ZengardenFg1
hi! link javascriptPropertyName ZengardenFg1

hi! link javascriptLogicSymbols ZengardenFg1
hi! link javascriptArrowFunc ZengardenYellow

hi! link javascriptDocParamName ZengardenFg4
hi! link javascriptDocTags ZengardenFg4
hi! link javascriptDocNotation ZengardenFg4
hi! link javascriptDocParamType ZengardenFg4
hi! link javascriptDocNamedParamType ZengardenFg4

hi! link javascriptBrackets ZengardenFg1
hi! link javascriptDOMElemAttrs ZengardenFg1
hi! link javascriptDOMEventMethod ZengardenFg1
hi! link javascriptDOMNodeMethod ZengardenFg1
hi! link javascriptDOMStorageMethod ZengardenFg1
hi! link javascriptHeadersMethod ZengardenFg1

hi! link javascriptAsyncFuncKeyword ZengardenRed
hi! link javascriptAwaitFuncKeyword ZengardenRed

" }}}
" PanglossJS: {{{

hi! link jsClassKeyword ZengardenAqua
hi! link jsExtendsKeyword ZengardenAqua
hi! link jsExportDefault ZengardenAqua
hi! link jsTemplateBraces ZengardenAqua
hi! link jsGlobalNodeObjects ZengardenFg1
hi! link jsGlobalObjects ZengardenFg1
hi! link jsFunction ZengardenAqua
hi! link jsFuncParens ZengardenFg3
hi! link jsParens ZengardenFg3
hi! link jsNull ZengardenPurple
hi! link jsUndefined ZengardenPurple
hi! link jsClassDefinition ZengardenYellow

" }}}
" TypeScript: {{{

hi! link typeScriptReserved ZengardenAqua
hi! link typeScriptLabel ZengardenAqua
hi! link typeScriptFuncKeyword ZengardenAqua
hi! link typeScriptIdentifier ZengardenOrange
hi! link typeScriptBraces ZengardenFg1
hi! link typeScriptEndColons ZengardenFg1
hi! link typeScriptDOMObjects ZengardenFg1
hi! link typeScriptAjaxMethods ZengardenFg1
hi! link typeScriptLogicSymbols ZengardenFg1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects ZengardenFg1
hi! link typeScriptParens ZengardenFg3
hi! link typeScriptOpSymbols ZengardenFg3
hi! link typeScriptHtmlElemProperties ZengardenFg1
hi! link typeScriptNull ZengardenPurple
hi! link typeScriptInterpolationDelimiter ZengardenAqua

" }}}
" PureScript: {{{

hi! link purescriptModuleKeyword ZengardenAqua
hi! link purescriptModuleName ZengardenFg1
hi! link purescriptWhere ZengardenAqua
hi! link purescriptDelimiter ZengardenFg4
hi! link purescriptType ZengardenFg1
hi! link purescriptImportKeyword ZengardenAqua
hi! link purescriptHidingKeyword ZengardenAqua
hi! link purescriptAsKeyword ZengardenAqua
hi! link purescriptStructure ZengardenAqua
hi! link purescriptOperator ZengardenBlue

hi! link purescriptTypeVar ZengardenFg1
hi! link purescriptConstructor ZengardenFg1
hi! link purescriptFunction ZengardenFg1
hi! link purescriptConditional ZengardenOrange
hi! link purescriptBacktick ZengardenOrange

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp ZengardenFg3
hi! link coffeeSpecialOp ZengardenFg3
hi! link coffeeCurly ZengardenOrange
hi! link coffeeParen ZengardenFg3
hi! link coffeeBracket ZengardenOrange

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter ZengardenGreen
hi! link rubyInterpolationDelimiter ZengardenAqua

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier ZengardenRed
hi! link objcDirective ZengardenBlue

" }}}
" Go: {{{

hi! link goDirective ZengardenAqua
hi! link goConstants ZengardenPurple
hi! link goDeclaration ZengardenRed
hi! link goDeclType ZengardenBlue
hi! link goBuiltins ZengardenOrange

" }}}
" Lua: {{{

hi! link luaIn ZengardenRed
hi! link luaFunction ZengardenAqua
hi! link luaTable ZengardenOrange

" }}}
" MoonScript: {{{

hi! link moonSpecialOp ZengardenFg3
hi! link moonExtendedOp ZengardenFg3
hi! link moonFunction ZengardenFg3
hi! link moonObject ZengardenYellow

" }}}
" Java: {{{

hi! link javaAnnotation ZengardenBlue
hi! link javaDocTags ZengardenAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen ZengardenFg3
hi! link javaParen1 ZengardenFg3
hi! link javaParen2 ZengardenFg3
hi! link javaParen3 ZengardenFg3
hi! link javaParen4 ZengardenFg3
hi! link javaParen5 ZengardenFg3
hi! link javaOperator ZengardenOrange

hi! link javaVarArg ZengardenGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter ZengardenGreen
hi! link elixirInterpolationDelimiter ZengardenAqua

hi! link elixirModuleDeclaration ZengardenYellow

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition ZengardenFg1
hi! link scalaCaseFollowing ZengardenFg1
hi! link scalaCapitalWord ZengardenFg1
hi! link scalaTypeExtension ZengardenFg1

hi! link scalaKeyword ZengardenRed
hi! link scalaKeywordModifier ZengardenRed

hi! link scalaSpecial ZengardenAqua
hi! link scalaOperator ZengardenFg1

hi! link scalaTypeDeclaration ZengardenYellow
hi! link scalaTypeTypePostDeclaration ZengardenYellow

hi! link scalaInstanceDeclaration ZengardenFg1
hi! link scalaInterpolation ZengardenAqua

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 ZengardenGreenBold
hi! link markdownH2 ZengardenGreenBold
hi! link markdownH3 ZengardenYellowBold
hi! link markdownH4 ZengardenYellowBold
hi! link markdownH5 ZengardenYellow
hi! link markdownH6 ZengardenYellow

hi! link markdownCode ZengardenAqua
hi! link markdownCodeBlock ZengardenAqua
hi! link markdownCodeDelimiter ZengardenAqua

hi! link markdownBlockquote ZengardenGray
hi! link markdownListMarker ZengardenGray
hi! link markdownOrderedListMarker ZengardenGray
hi! link markdownRule ZengardenGray
hi! link markdownHeadingRule ZengardenGray

hi! link markdownUrlDelimiter ZengardenFg3
hi! link markdownLinkDelimiter ZengardenFg3
hi! link markdownLinkTextDelimiter ZengardenFg3

hi! link markdownHeadingDelimiter ZengardenOrange
hi! link markdownUrl ZengardenPurple
hi! link markdownUrlTitleDelimiter ZengardenGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType ZengardenYellow
" hi! link haskellOperators ZengardenOrange
" hi! link haskellConditional ZengardenAqua
" hi! link haskellLet ZengardenOrange
"
hi! link haskellType ZengardenFg1
hi! link haskellIdentifier ZengardenFg1
hi! link haskellSeparator ZengardenFg1
hi! link haskellDelimiter ZengardenFg4
hi! link haskellOperators ZengardenBlue
"
hi! link haskellBacktick ZengardenOrange
hi! link haskellStatement ZengardenOrange
hi! link haskellConditional ZengardenOrange

hi! link haskellLet ZengardenAqua
hi! link haskellDefault ZengardenAqua
hi! link haskellWhere ZengardenAqua
hi! link haskellBottom ZengardenAqua
hi! link haskellBlockKeywords ZengardenAqua
hi! link haskellImportKeywords ZengardenAqua
hi! link haskellDeclKeyword ZengardenAqua
hi! link haskellDeriving ZengardenAqua
hi! link haskellAssocType ZengardenAqua

hi! link haskellNumber ZengardenPurple
hi! link haskellPragma ZengardenPurple

hi! link haskellString ZengardenGreen
hi! link haskellChar ZengardenGreen

" }}}
" Json: {{{

hi! link jsonKeyword ZengardenGreen
hi! link jsonQuote ZengardenGreen
hi! link jsonBraces ZengardenFg1
hi! link jsonString ZengardenFg1

" }}}


" Functions -------------------------------------------------------------------
" Search Highlighting Cursor {{{

function! ZengardenHlsShowCursor()
  call s:HL('Cursor', s:bg0, s:hls_cursor)
endfunction

function! ZengardenHlsHideCursor()
  call s:HL('Cursor', s:none, s:none, s:inverse)
endfunction

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
