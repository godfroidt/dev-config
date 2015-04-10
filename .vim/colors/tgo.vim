" Tgo Vim color file
" Maintainer:	tgo
" Last Change:	2001 May 21

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "tgo"


" Colors for syntax highlighting
hi Comment 		term=bold ctermfg=DarkGreen guifg=DarkGreen
hi Constant   ctermfg=DarkRed guifg=Magenta
hi Special    term=bold ctermfg=DarkMagenta guifg=SlateBlue
hi Identifier term=underline ctermfg=DarkCyan guifg=DarkCyan
hi Statement  term=bold ctermfg=Brown guifg=Brown
hi PreProc    term=underline ctermfg=DarkMagenta guifg=Purple
hi Type       term=underline ctermfg=Blue guifg=Blue
hi Ignore     ctermfg=white guifg=bg
hi Stgo       ctermfg=red guifg=red
hi Ntgo       ctermfg=DarkRed guifg=DarkRed
hi Todo  			term=standout ctermbg=DarkRed ctermfg=White guifg=White guibg=DarkRed

hi link String		Stgo
hi link Number		Ntgo
hi Normal guibg=#C0DCC0 guifg=#000080

" color for folded items
hi Folded ctermfg=red guifg=DarkGreen guibg=#D0EED0

" StatusLine and vertical split colors
hi StatusLine guifg=LightYellow guibg=#000080 term=reverse,bold cterm=reverse,bold ctermbg=White
hi StatusLineNC guibg=LightYellow guifg=#000080 term=reverse cterm=reverse
hi VertSplit guifg=#000080 guibg=#000080

" Color when showing line numbers
hi LineNr guifg=DarkGreen guibg=#D0EED0

" Groups used in the 'highlight' and 'guicursor' options default value.
"hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
"hi IncSearch term=reverse cterm=reverse gui=reverse
"hi ModeMsg term=bold cterm=bold gui=bold
"hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
"hi StatusLineNC term=reverse cterm=reverse gui=reverse
"hi VertSplit term=reverse cterm=reverse gui=reverse
"hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
"hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
"hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
"hi Cursor guibg=Green guifg=NONE
"hi lCursor guibg=Cyan guifg=NONE
"hi Directory term=bold ctermfg=DarkBlue guifg=Blue
"hi LineNr term=underline ctermfg=Brown guifg=Brown
"hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
"hi NonText term=bold ctermfg=Blue gui=bold guifg=Blue guibg=grey80
"hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
"hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
"hi SpecialKey term=bold ctermfg=DarkBlue guifg=Blue
"hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
"hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
"hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
"hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
"hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
"hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
"hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

" vim: sw=2
