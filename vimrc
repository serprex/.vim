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
set encoding=utf8
set noswapfile
set shortmess+=I
set wildmenu
set wildmode=longest:list,full
set wildignore+=*.o
let g:mapleader=","
if &term == "linux"
	colorscheme slate
else
	colorscheme sourcerer
endif
let g:netrw_dirhistmax=0
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
let g:prettier#config#parser = 'babel'
let g:syntastic_mode_map = { 'mode': 'passive' }
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css Prettier
set cursorline
syntax on
hi CursorLine cterm=underline ctermbg=NONE ctermfg=NONE
hi Search ctermbg=grey
hi String ctermfg=blue
hi Number ctermfg=blue
hi cConstant ctermfg=blue
hi pythonException ctermfg=blue
hi pythonExClass ctermfg=blue
hi pythonDecorator ctermfg=white
hi MatchParen ctermfg=black ctermbg=red
hi Normal ctermfg=white
hi YcmWarningSection ctermfg=red
hi YcmErrorSection ctermfg=red
filetype plugin indent off
nnoremap K 12k
nnoremap Q <Nop>
nnoremap <F1> :noh<CR><Esc><C-G>
imap <F1> <nop>
inoremap <silent> <C-s> <C-O>:w<CR>
nmap <silent> <F1> :noh<CR>
nmap ; :
map Y y$
nnoremap <silent> <CR> :noh<CR><CR><C-G>
nnoremap <silent> <Space> :noh<CR><Space><C-G>
nnoremap <Leader>gm /\v^\<\<\<\<\<\<\< \|\=\=\=\=\=\=\=$\|\>\>\>\>\>\>\> /<CR>
nnoremap <Leader>. :YcmCompleter GoTo<CR>
nnoremap <Leader>r :YcmCompleter GoToReferences<CR>
nnoremap <Leader>l :YcmCompleter GetType<CR>
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T


au BufRead,BufNewFile *.md setlocal wrap linebreak nolist | setlocal ft=
if filereadable(expand("~/.vim/local_epilogue"))
	exe 'so' expand("~/.vim/local_epilogue")
endif