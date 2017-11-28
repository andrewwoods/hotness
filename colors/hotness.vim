" Name:          Hotness
" Author:        Andrew Woods <http://andrewwoods.net/>
" License:       The MIT License
" Last Change:   v0.1.0: 2015 Nov 27 Fri
"-------------------------------------------------------------------------------


set t_Co=256
let g:colors_name = "hotness"

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif


"-------------------------------------------------------------------------------
" COLOR LEGEND 
"
" CTerm  Hex       Color Name 
" -----  -------   ------------------
"     0  #000000   black
"     1            red
"    15            bright white
"    60  #5f5f87   dark purple
"    66  #5f8787   turquoise
"   116  #87d7d7   light turquoise
"   139  #af87af   purple
"   150  #afd787   light green
"   161  #d7005f   dark pink
"   189  #d7d7ff   light purple
"   205  #ff5faf   hot pink
"   221  #ffd75f   goldenrod
"   222  #ffd787   light goldenrod
"   223  #ffd7af   navajo white
"   235  #262626   gray 15
"   239  #4e4e4e   gray 30
"   248  #a8a8a8   gray 66
"   254  #e4e4e4   gray 89

"-------------------------------------------------------------------------------
" GENERAL 
"-------------------------------------------------------------------------------
"
hi Normal         ctermfg=254  ctermbg=235  cterm=NONE
hi Cursor         ctermfg=60   ctermbg=161  cterm=NONE
hi CursorColumn   ctermfg=255  ctermbg=60   cterm=NONE
hi CursorLine     ctermfg=255  ctermbg=60   cterm=NONE
hi CursorLineNr   ctermfg=255  ctermbg=60   cterm=NONE
hi LineNR         ctermfg=139  ctermbg=NONE cterm=NONE
hi StatusLineNC   ctermfg=60   ctermbg=189  cterm=bold
hi StatusLine     ctermfg=235  ctermbg=222  cterm=bold
hi Search         ctermfg=0    ctermbg=222  cterm=NONE

"-------------------------------------------------------------------------------
" MISTAKES AND ERRORS
"-------------------------------------------------------------------------------
"
hi Debug          ctermfg=1    ctermbg=NONE cterm=NONE
hi Error          ctermfg=15   ctermbg=161  cterm=NONE
hi ErrorMsg       ctermfg=15   ctermbg=161  cterm=NONE
hi SpellBad       ctermfg=189  ctermbg=235  cterm=underline
hi SpellRare      ctermfg=189  ctermbg=235  cterm=underline
hi SpellCap       ctermfg=189  ctermbg=235  cterm=underline
hi SpellLocal     ctermfg=189  ctermbg=235  cterm=underline
hi WarningMsg     ctermfg=161  ctermbg=223  cterm=NONE

"-------------------------------------------------------------------------------
" CODING SYNTAX 
"-------------------------------------------------------------------------------
"
"    Structural
"
hi Comment        ctermfg=247  ctermbg=NONE cterm=NONE
hi Conditional    ctermfg=150  ctermbg=NONE cterm=bold
hi Delimiter      ctermfg=254  ctermbg=NONE cterm=NONE
hi Exception      ctermfg=222  ctermbg=NONE cterm=bold
hi Function       ctermfg=205  ctermbg=NONE cterm=bold
hi Define         ctermfg=205  ctermbg=NONE cterm=bold
hi Identifier     ctermfg=189  ctermbg=NONE cterm=NONE
hi Include        ctermfg=222  ctermbg=NONE cterm=bold
hi Keyword        ctermfg=221  ctermbg=NONE cterm=bold
hi Label          ctermfg=205  ctermbg=NONE cterm=bold
hi Macro          ctermfg=205  ctermbg=NONE cterm=NONE
hi PreCondit      ctermfg=205  ctermbg=NONE cterm=NONE
hi PreProc        ctermfg=150  ctermbg=NONE cterm=NONE
hi SpecialChar    ctermfg=116  ctermbg=NONE cterm=NONE
hi Statement      ctermfg=222  ctermbg=NONE cterm=bold
hi Structure      ctermfg=221  ctermbg=NONE cterm=bold
hi Tag            ctermfg=189  ctermbg=NONE cterm=bold
hi Type           ctermfg=222  ctermbg=NONE cterm=bold
hi Typedef        ctermfg=60   ctermbg=NONE cterm=bold
hi Underlined     ctermfg=189  ctermbg=235  cterm=underline

"
"-------------------------------------------------------------------------------
"    Data Types
"
hi Character      ctermfg=248  ctermbg=NONE cterm=NONE
hi Boolean        ctermfg=190  ctermbg=NONE cterm=NONE
hi Constant       ctermfg=197  ctermbg=NONE cterm=NONE
hi Float          ctermfg=224  ctermbg=NONE cterm=NONE
hi Number         ctermfg=150  ctermbg=NONE cterm=NONE
hi Operator       ctermfg=189  ctermbg=NONE cterm=bold
hi String         ctermfg=216  ctermbg=NONE cterm=bold


"-------------------------------------------------------------------------------
" UNORGANIZED 
"
hi DiffAdd        ctermfg=235  ctermbg=150  cterm=NONE
hi DiffChange     ctermfg=235  ctermbg=223  cterm=NONE
hi DiffDelete     ctermfg=235  ctermbg=161  cterm=NONE
hi DiffText       ctermfg=255  ctermbg=NONE cterm=NONE
hi Directory      ctermfg=60   ctermbg=NONE cterm=bold
hi FoldColumn     ctermfg=235  ctermbg=248  cterm=NONE
hi Folded         ctermfg=235  ctermbg=116  cterm=NONE
hi IncSearch      ctermfg=255  ctermbg=150  cterm=NONE
hi MatchParen     ctermfg=223  ctermbg=NONE cterm=bold
hi ModeMsg        ctermfg=15   ctermbg=235  cterm=bold
hi MoreMsg        ctermfg=223  ctermbg=NONE cterm=bold
hi NonText        ctermfg=150  ctermbg=NONE cterm=NONE
hi PMenu          ctermfg=15   ctermbg=222  cterm=NONE
hi PMenuSbar      ctermfg=NONE ctermbg=102  cterm=NONE
hi PMenuSel       ctermfg=235  ctermbg=150  cterm=NONE
hi PMenuThumb     ctermfg=NONE ctermbg=248  cterm=NONE
hi Repeat         ctermfg=1    ctermbg=NONE cterm=bold
hi SignColumn     ctermfg=238  ctermbg=116  cterm=NONE
hi Special        ctermfg=221  ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=1    ctermbg=NONE cterm=NONE
hi SpecialKey     ctermfg=66   ctermbg=NONE cterm=NONE
hi StorageClass   ctermfg=221  ctermbg=NONE cterm=bold
hi TabLine        ctermfg=235  ctermbg=116  cterm=bold
hi TabLineFill    ctermfg=235  ctermbg=116  cterm=bold
hi TabLineSel     ctermfg=15   ctermbg=150  cterm=bold
hi Title          ctermfg=189  ctermbg=235  cterm=bold
hi Todo           ctermfg=150  ctermbg=NONE cterm=bold
hi VertSplit      ctermfg=235  ctermbg=116  cterm=bold
hi Visual         ctermfg=235  ctermbg=189  cterm=NONE
hi VisualNOS      ctermfg=235  ctermbg=189  cterm=underline
hi WildMenu       ctermfg=NONE ctermbg=248  cterm=NONE
hi cursorim       ctermfg=15   ctermbg=60   cterm=NONE

