" --- General
" don't bother about VI compatibility
set nocompatible
" avoid 'Hit return to continue' message
set shortmess=a
" No annoying beeps: use visualbell
set vb

" --- Enable pathogen
" pathogen was installed with
"   mkdir -p ~/.vim/autoload ~/.vim/bundle
"   curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()

" --- Editing 
" tabspace to 2 spaces
set ts=2
" No linefeed forced ever
set tw=0
" and wrap at the end of window (no horizontal scrollbar)
set wrap
" show 80 col marker
set colorcolumn=80
" Unix files
set fileformat=unix
" do not allow actual rendering of html tags content
let html_no_rendering=1
" ident control
set autoindent
set smartindent
set shiftwidth=2
" I want to see matching parenthesis
set showmatch
" backspace control
set bs=indent,eol,start
" automatic syntax coloring
if version >= 600
        syntax enable
else    
        set syntax=on
endif   
set number

" --- additional files needed by external tools
let g:jshintconfig = "~/.jshintrc"

" --- status line
" also see colorscheme in tgo.vim
" status line looks like
" filename modified readonly type buffernum,modified line,column percentinfile hexofcharundercursor
set statusline=%-5t%-1m%r%y%=[%n%M]\ %l,%c\ %p%%\ 0x%B
set laststatus=2

" --- Searching
" search incrementaly and smartly 
set smartcase
set incsearch
" highlight search results
set hlsearch

" --- Key Maps
map <F3> n
map <S-F3> [I
map <D-F4> :nohl<CR>
map <D-F6> :JSHint<CR>

" ,e/,w to open/save a file in the same directory as the currently edited file
if has("unix")
        map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
        map ,w :w <C-R>=expand("%:p:h") . "/" <CR>
        map ,r :r <C-R>=expand("%:p:h") . "/" <CR>
else
        map ,e :e <C-R>=expand("%:p:h") . "\\"<CR> 
        map ,w :w <C-R>=expand("%:p:h") . "/" <CR>
        map ,r :r <C-R>=expand("%:p:h") . "/" <CR>
endif
" use CTRL-RIGHT & CTRL-LEFT to move between buffers
map <C-RIGHT> :bn<CR>
map <C-LEFT> :bp<CR>
" mappings for javascript formatter. Assumes npm install -g esformatter
" and ~/.esformatter config being available
" same combo for visual and non visual mode
map ,es :%!esformatter<CR>
vmap ,es :!esformatter<CR>

" --- Abbreviations
abbr sop( System.out.println(

" --- colorscheme
if (v:version >= 600)
	set background=light
	colorscheme solarized
"linux				set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
"mac
	set guifont=Andale\ Mono:h10
	set cursorline
endif
hi StatusLine guifg=LightYellow
hi User2 guibg=LightYellow guifg=Red

" --- various
" doing this make yank selections go to OS clipboard
set clipboard=unnamed


