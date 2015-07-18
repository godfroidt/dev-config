" -------------------------------------------------------- General
" don't bother about VI compatibility
set nocompatible
" avoid 'Hit return to continue' message
set shortmess=a
" No annoying beeps: use visualbell
set vb
" redraw smartly when using long running macros (perf+)
set lazyredraw
" wildmenu for command completion.
set wildmenu

" ----------------------------------------- Enable pathogen
" installed with mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()

" -------------------------------------------------------- Source 
" tabspace to 2 spaces
set ts=2
" don't keep tabs
set expandtab
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
" line numbers everywere
set number

" ----------------------------------------------- status line
" also see colorscheme in tgo.vim
" status line looks like
" filename modified readonly type buffernum,modified line,column percentinfile hexofcharundercursor
set statusline=%-5t%-1m%r%y%=[%n%M]\ %l,%c\ %p%%\ 0x%B
set laststatus=2

" -------------------------------------------------------- Searching
" search incrementaly and smartly 
set smartcase
set incsearch
" highlight search results
set hlsearch
" !!! REMEMBER the * key searches for whatever is under the cursor

" ------------------------------------------------------ Key Maps
" Set map leaders
let mapleader = ","
let g:mapleader = ","

" Disable highlight on leader-space
map <leader><space> :nohl<CR>

" ,e/,w to open/save a file in the same directory as the currently edited file
if has("unix")
  map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>w :w <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>r :r <C-R>=expand("%:p:h") . "/" <CR>
  " <leader>f creates a filesystem tree starting at the current directory
  map <leader>f :exe CreateMenuPath(expand("%:p:h"),"Tgo&Path") <CR>
else
  map <leader>e :e <C-R>=expand("%:p:h") . "\\"<CR> 
  map <leader>w :w <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>r :r <C-R>=expand("%:p:h") . "/" <CR>
endif

" move among splits and buffers.  We use command key on mac, ctrl on other OSes
if has("gui_macvim")
  " macvim has a gvimrc and vimrc file located in /Applications/MacVim.app/Contents/Resources/vim
  " which set a bunch of stuff *after* the ~/vimrc is read.  It offers some
  " bypass option, though.
  let macvim_skip_cmd_opt_movement=1
  " we want cmd-left/right to allow us to move among splits
  nnoremap <D-left> <C-w>W
  nnoremap <D-right> <C-w>w
  " and among buffers if shift is used
  nnoremap <D-S-left> :bp<cr>
  nnoremap <D-S-right> :bn<cr>
else
  " we want ctrl-left/right to allow us to move among splits
  nnoremap <C-left> <C-w>W
  nnoremap <C-right> <C-w>w
  " and among buffers if shift is used (we use CTRL on other OSes
  nnoremap <C-S-left> :bp<cr>
  nnoremap <C-S-right> :bn<cr>
endif

" ------------------------------------------------------- Abbreviations
abbr sop( System.out.println(

" -------------------------------------------- Force my own colorscheme always
if (v:version >= 600)
	colorscheme solarized
	set background=light
	set guifont=Courier\ New:h12
	set cursorline
endif

" --------------------------------------------------------- Experiments
" doing this make yank selections go to OS clipboard
set clipboard=unnamed
" Move visual block (from http://vimrcfu.com/snippet/77)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
let g:jshintconfig = "~/.jshintrc"

" --- mapping for javascript formatter. Assumes npm install -g esformatter
" and ~.esformatter config being available
" same combo for visual and non visual mode
map <leader>f :%!esformatter<CR>
vmap <leader>f :!esformatter<CR>
