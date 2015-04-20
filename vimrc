"-------STANDARD VIM FUNCTIONS---------"
"--------------------------------------"

"[Vim Menu- press <F4> to use]"
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>
"[/end menu]"

set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set title
set ruler
set cursorline
syntax on

         "---HIGHLIGHTING---"
"--------------------------------------"
:set incsearch
:set ignorecase
:set hlsearch
:nmap \q :nohlsearch<CR>
highlight Visual ctermfg=white ctermbg=green cterm=bold

"[Show the current line]"
set cul
"--------------------------------------"

          "---COLOR THEME---"
"--------------------------------------"
"[Sets 256bit color]"
set t_Co=256

"[Set custom theme and background tint]"
"set background=dark
colorscheme neonwave

"[Shows red text after 80th line]"
:match ErrorMSG '\%>80v.\+'

"[set the font]"
"set guifont=

"[showmatching brackets]"
set showmatch
set matchtime=3
"--------------------------------------"

"[show filename in bottom of window]"
set modeline
set ls=2

"[set visual bell]"
set vb

"[lets you hide sections of code]"
set foldmethod=manual




     "---KEYBOARD REMAPS & NAV---"
"--------------------------------------"
"[Allows <ii> to trigger <ESC>]"
:imap ii <Esc>

"[Underline curr line w/ dashes in Normal]"
nnoremap <F5> yyp<c-v>$r-

"[Underline curr line w/ dashes in Insert]"
inoremap <F5> <Esc>yyp<c-v>$r-A

"[Allows mouse click navigation]"
set mouse=a

"[Fixes arror key Nav on some systems]"
set nocompatible 
"--------------------------------------"

