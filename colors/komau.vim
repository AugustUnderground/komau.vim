" Name:       komau.vim
" Version:    0.0.1
" Maintainer: github.com/augustunderground, forked from github.com/ntk148v
" License:    Apache 2
"
" A minimal colorscheme for Vim/Neovim.
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='komau'

let s:black00 = {"gui": "#060404", "cterm": "232"}
let s:black01 = {"gui": "#0E0E0E", "cterm": "233"}
let s:black02 = {"gui": "#181818", "cterm": "234"}
let s:black03 = {"gui": "#222222", "cterm": "235"}
let s:black04 = {"gui": "#2C2C2C", "cterm": "236"}
let s:black05 = {"gui": "#363636", "cterm": "237"}

let s:gray00  = {"gui": "#515151", "cterm": "242"}
let s:gray01  = {"gui": "#656565", "cterm": "243"}
let s:gray02  = {"gui": "#797979", "cterm": "244"}
let s:gray03  = {"gui": "#8D8D8D", "cterm": "245"}
let s:gray04  = {"gui": "#A1A1A1", "cterm": "246"}

let s:white00 = {"gui": "#F6F6FF", "cterm": "255"}
let s:white01 = {"gui": "#ECECEC", "cterm": "254"}
let s:white02 = {"gui": "#E2E2E2", "cterm": "253"}
let s:white03 = {"gui": "#D8D8D8", "cterm": "252"}
let s:white04 = {"gui": "#CECECE", "cterm": "251"}
let s:white05 = {"gui": "#C4C4C4", "cterm": "250"}

let s:yellow  = {"gui": "#FFB20F", "cterm": "172"}
let s:red     = {"gui": "#8F0024", "cterm": "124"}
let s:green   = {"gui": "#0EAD69", "cterm": "114" }
let s:purple  = {"gui": "#BD05CB", "cterm": "126"}
let s:blue    = {"gui": "#0077DB", "cterm": "33" }
let s:cyan    = {"gui": "#20B2AA", "cterm": "44" }

let s:background = &background

if &background == "dark"
    let s:fg              = s:white00
    let s:bg              = s:black00
    let s:fg_light        = s:gray04
    let s:fg_subtle       = s:white05
    let s:fg_very_subtle  = s:white03
    let s:bg_light        = s:gray00
    let s:bg_subtle       = s:black04
    let s:bg_very_subtle  = s:black02
    let s:norm            = s:white04
    let s:norm_subtle     = s:gray03
else
    let s:fg              = s:black00
    let s:bg              = s:white00
    let s:fg_light        = s:gray00
    let s:fg_subtle       = s:black05
    let s:fg_very_subtle  = s:black03
    let s:bg_light        = s:gray04
    let s:bg_subtle       = s:white04
    let s:bg_very_subtle  = s:white02
    let s:norm            = s:black04
    let s:norm_subtle     = s:gray01
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" https://github.com/itchyny/lightline.vim/issues/424
autocmd! OptionSet background
    \ execute 'source' globpath(&rtp, 'autoload/lightline/colorscheme/komau.vim')
    \ | call lightline#colorscheme() | call lightline#update()

call s:h("Normal", {"bg": s:bg, "fg": s:norm})

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != s:background
   execute "set background=" . s:background
   call s:lightline_update()
endif

call s:h("Cursor",        {"bg": s:bg_light, "fg": s:norm })
call s:h("Comment",       {"fg": s:bg_light, "gui": "italic"})

call s:h("Constant",      {"fg": s:norm_subtle})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Identifier",     {"fg": s:fg, "cterm": "italic", "gui": "italic"})
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:fg, "cterm": "bold", "gui": "bold"})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:fg_very_subtle, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",       {"fg": s:norm_subtle})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:fg_light})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:fg_subtle})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",   {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",       {"fg": s:bg_very_subtle})
call s:h("Error",        {"fg": s:white00, "bg": s:red, "cterm": "bold"})
call s:h("Todo",         {"fg": s:yellow, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",   {"fg": s:green})
call s:h("NonText",      {"fg": s:gray02})
call s:h("Conceal",      {"fg": s:fg, "bg": s:bg})
call s:h("Directory",    {"fg": s:norm, "gui": "bold", "cterm": "bold"})
call s:h("ErrorMsg",     {"fg": s:red})
call s:h("IncSearch",    {"bg": s:norm_subtle, "fg": s:bg})
call s:h("Search",       {"bg": s:norm, "fg": s:bg, "cterm": "bold", "gui": "bold"})
call s:h("MoreMsg",      {"fg": s:fg_subtle, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("Question",     {"fg": s:purple})
call s:h("StatusLine",   {"bg": s:bg_very_subtle})

call s:h("StatusLineNC", {"bg": s:bg_very_subtle, "fg": s:fg_very_subtle})
call s:h("VertSplit",    {"bg": s:bg_subtle, "fg": s:bg_subtle})
call s:h("Title",        {"fg": s:fg_light})
call s:h("Visual",       {"fg": s:norm, "bg": s:bg_subtle})
call s:h("VisualNOS",    {"bg": s:bg_subtle})
call s:h("WarningMsg",   {"fg": s:yellow})
call s:h("WildMenu",     {"fg": s:bg, "bg": s:norm})
call s:h("Folded",       {"fg": s:fg_light})
call s:h("FoldColumn",   {"fg": s:bg_subtle})
call s:h("DiffAdd",      {"fg": s:green})
call s:h("DiffDelete",   {"fg": s:red})
call s:h("DiffChange",   {"fg": s:yellow})
call s:h("DiffText",     {"fg": s:cyan})
call s:h("SignColumn",   {"fg": s:green})

if has("gui_running")
    call s:h("SpellBad",   {"gui": "underline", "sp": s:red})
    call s:h("SpellCap",   {"gui": "underline", "sp": s:green})
    call s:h("SpellRare",  {"gui": "underline", "sp": s:purple})
    call s:h("SpellLocal", {"gui": "underline", "sp": s:green})
else
    call s:h("SpellBad",   {"cterm": "underline", "fg": s:red})
    call s:h("SpellCap",   {"cterm": "underline", "fg": s:green})
    call s:h("SpellRare",  {"cterm": "underline", "fg": s:purple})
    call s:h("SpellLocal", {"cterm": "underline", "fg": s:green})
endif

call s:h("Pmenu",      {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("PmenuSel",   {"fg": s:norm, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("PmenuSbar",  {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb", {"fg": s:norm, "bg": s:bg_subtle})

call s:h("CocSearch",          {"fg": s:fg, "bg": s:bg_very_subtle, "gui": "bold", "cterm": "bold"})
call s:h("CocUnusedHighlight", {"fg": s:fg,  "bg": s:bg_subtle})

call s:h("DiagnosticError", {"fg": s:red, "bg": s:bg_very_subtle})
call s:h("DiagnosticWarn",  {"fg": s:yellow, "bg": s:bg_very_subtle})
call s:h("DiagnosticInfo",  {"fg": s:blue, "bg": s:bg_very_subtle})
call s:h("DiagnosticHint",  {"fg": s:fg_light, "bg": s:bg_very_subtle})

call s:h("DiagnosticUnderlineError", {"fg": s:red, "bg": s:bg_very_subtle, "gui": "underline", "cterm": "underline"})
call s:h("DiagnosticUnderlineWarn",  {"fg": s:yellow, "bg": s:bg_very_subtle, "gui": "underline", "cterm": "underline"})
call s:h("DiagnosticUnderlineInfo",  {"fg": s:blue, "bg": s:bg_very_subtle, "gui": "underline", "cterm": "underline"})
call s:h("DiagnosticUnderlineHint",  {"fg": s:fg_light, "bg": s:bg_very_subtle, "gui": "underline", "cterm": "underline"})

call s:h("TabLine",     {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",  {"fg": s:bg_very_subtle, "bg": s:norm, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill", {"fg": s:norm, "bg": s:bg_very_subtle})

call s:h("LineNr",       {"fg": s:bg_light, "bg": s:bg})
call s:h("CursorLineNr", {"fg": s:fg_subtle, "bg": s:bg_very_subtle, "gui": "bold", "cterm": "bold"})
call s:h("CursorColumn", {"bg": s:bg_very_subtle})
call s:h("CursorLine",   {"bg": s:bg_very_subtle})
call s:h("ColorColumn",  {"bg": s:bg_subtle})

call s:h("MatchParen", {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",   {"fg": s:fg_light})

call s:h("htmlH1", {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2", {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3", {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4", {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5", {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6", {"bg": s:bg, "fg": s:norm})

" Syntastic
call s:h("SyntasticWarningSign", {"fg": s:yellow})
call s:h("SyntasticWarning",     {"bg": s:yellow, "fg": s:black00, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",   {"fg": s:red})
call s:h("SyntasticError",       {"bg": s:red, "fg": s:white00, "gui": "bold", "cterm": "bold"})

" which-key.nvim
call s:h("WhichKey",          {"bg": s:bg, "fg": s:purple, "gui": "bold", "cterm": "bold"})
call s:h("WhichKeyDesc",      {"bg": s:bg, "fg": s:norm_subtle, "gui": "bold", "cterm": "bold"})
call s:h("WhichKeySeparator", {"bg": s:bg, "fg": s:norm, "gui": "bold", "cterm": "bold"})
call s:h("WhichKeyFloat",     {"bg": s:bg})

hi link WhichKeyGroup WhichKey

" Neomake
hi link NeomakeWarningSign  SyntasticWarningSign
hi link NeomakeErrorSign    SyntasticErrorSign

" ALE
hi link ALEWarningSign  SyntasticWarningSign
hi link ALEErrorSign    SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

" Markdown
call s:h("markdownCode",              { "fg": s:fg_subtle, "bg": s:bg_subtle })
call s:h("markdownLinkReference",     { "fg": s:fg_subtle, "bg": s:bg_subtle })
call s:h("markdownJekyllFrontMatter", { "fg": s:fg_subtle, "bg": s:bg_subtle })
call s:h("markdownCodeBlock",         { "fg": s:norm })
call s:h("markdownCodeDelimiter",     { "fg": s:norm })
call s:h("markdownHeadingDelimiter",  { "fg": s:fg })
call s:h("markdownRule",              { "bg": s:bg_subtle })
call s:h("markdownHeadingRule",       { "fg": s:fg_light })
call s:h("htmlH1",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("htmlH2",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("htmlH3",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("htmlH4",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("htmlH5",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("htmlH6",                    { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("mkdDelimiter",              { "fg": s:fg })
call s:h("markdownId",                { "fg": s:fg_subtle })
call s:h("markdownBlockquote",        { "fg": s:bg_subtle })
call s:h("markdownItalic",            { "fg": s:fg_subtle, "gui": "italic", "cterm": "italic" })
call s:h("mkdBold",                   { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("mkdInlineURL",              { "fg": s:fg, "gui": "italic", "cterm": "italic" })
call s:h("mkdListItem",               { "fg": s:fg })
call s:h("markdownOrderedListMarker", { "fg": s:fg })
call s:h("mkdLink",                   { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("markdownLinkDelimiter",     { "fg": s:fg })
call s:h("mkdURL",                    { "fg": s:norm_subtle, "gui": "italic", "cterm": "italic" })
