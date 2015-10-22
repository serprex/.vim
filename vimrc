set noeol
set nofixeol
set showcmd
set is
set nowrap
set number
set ic
set smartcase
set noexpandtab
set autoindent
set background=dark
set mouse=a
set ttym=urxvt
set hlsearch
set sw=4
set ts=4
set lazyredraw
set ttyfast
set ru
set noswapfile
execute pathogen#infect()
if &term == "st-256color"
	colorscheme sourcerer
else
	colorscheme slate
endif
let g:clang_c_options='-std=gnu11'
let g:netrw_dirhistmax=0
set cursorline
syntax on
hi CursorLine cterm=underline ctermbg=NONE ctermfg=NONE
hi String ctermfg=blue
hi Number ctermfg=blue
hi MatchParen ctermfg=black
hi Normal ctermfg=white
filetype plugin indent off
set omnifunc=syntaxcomplete#Complete
ca q q!
map K <Nop>
nmap ; :
nnoremap <CR> :noh<CR><CR>