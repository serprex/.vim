set nocompatible
set noeol
set nofixeol
set nobackup
set viminfo="NONE"
set showcmd
set is
set nowrap
set number
set relativenumber
set ic
set smartcase
set noexpandtab
set autoindent
set background=dark
set mouse=a
set hlsearch
set sw=4
set ts=4
set lazyredraw
set ttyfast
set ru
set noswapfile
set shortmess+=I
set wildmenu
set wildmode=longest:list,full
if &term == "st-256color"
	colorscheme sourcerer
else
	colorscheme slate
endif
let g:clang_c_options='-std=gnu11'
let g:netrw_dirhistmax=0
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
let g:prettier#config#parser = 'babylon'
autocmd BufWritePre *.js,*.css PrettierAsync
set cursorline
syntax on
hi CursorLine cterm=underline ctermbg=NONE ctermfg=NONE
hi String ctermfg=blue
hi Number ctermfg=blue
hi pythonException ctermfg=blue
hi pythonExClass ctermfg=blue
hi pythonDecorator ctermfg=white
hi MatchParen ctermfg=black ctermbg=red
hi Normal ctermfg=white
filetype plugin indent off
nnoremap K 12k
nnoremap Q <Nop>
nnoremap <F1> :noh<CR><Esc>
imap <F1> <nop>
nmap <F1> :noh<CR>
nmap ; :
map Y y$
nnoremap <CR> :noh<CR><CR>
nnoremap <Space> :noh<CR><Space>
au BufRead,BufNewFile *.md setlocal wrap linebreak nolist | setlocal ft=