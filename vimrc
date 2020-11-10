set nocompatible
set noeol
set nofixeol
set nobackup
set ttimeoutlen=0
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
set whichwrap+=<,>,[,]
set wildmenu
set wildmode=longest:list,full
set wildignore+=*.o
set completeopt-=preview
set pastetoggle=<F2>
let g:mapleader=","
if &term == "linux"
	colorscheme slate
else
	colorscheme sourcerer
endif
let g:netrw_dirhistmax=0
command! -nargs=0 Prettier :CocCommand prettier.formatFile
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd BufWritePre *.mjs,*.cjs,*.js,*.jsx,*.ts,*.tsx,*.css Prettier
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
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
hi SneakLabel ctermfg=black ctermbg=white
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
nmap <Leader>. <Plug>(coc-definition)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <C-B> :Buffers
let g:sneak#label = 1
map z <Plug>Sneak_s
map Z <Plug>Sneak_S
xnoremap <Leader>m <esc>:'<,'>w !/mnt/c/Windows/System32/clip.exe<CR>

if filereadable("/usr/share/doc/fzf/examples/fzf.vim")
	source /usr/share/doc/fzf/examples/fzf.vim
endif
command W w

au BufRead,BufNewFile *.md setlocal wrap linebreak nolist | setlocal ft=
if filereadable(expand("~/.vim/local_epilogue"))
	exe 'so' expand("~/.vim/local_epilogue")
endif
