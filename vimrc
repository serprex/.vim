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
set mousemodel=extend
set hlsearch
set sw=4
set ts=4
set lazyredraw
set ttyfast
set ru
set encoding=utf8
set termguicolors
set noswapfile
set shortmess+=I
set whichwrap+=<,>,[,],h,l
set wildmenu
set wildmode=longest:list,full
set wildignore+=*.o
set completeopt-=preview
let g:mapleader=","
let g:netrw_dirhistmax=0
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd BufWritePre *.go,*.mjs,*.cjs,*.js,*.jsx,*.ts,*.tsx,*.css Neoformat
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype gitcommit setlocal formatoptions-=t
set cursorline
syntax on
let g:melange_transparent_background=v:true
colo melange
hi gitcommitSummary guifg=#C0C0C0
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
filetype plugin indent off
nnoremap Q <Nop>
nnoremap <F1> :noh<CR><Esc><C-G>
imap <F1> <nop>
inoremap <silent> <C-s> <C-O>:w<CR>
nmap <silent> <F1> :noh<CR>
nmap ; :
map Y y$
nnoremap <silent> <CR> :noh<CR><CR><C-G>
nnoremap <Space> <C-W>
nnoremap <Leader>m /\v^\<\<\<\<\<\<\< \|\=\=\=\=\=\=\=$\|\>\>\>\>\>\>\> /<CR>

nnoremap <silent> <Leader>. <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Leader>\ <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <Leader>n <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <Leader>e <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <Leader>/ <cmd>lua require('fzf-lua').lgrep_curbuf()<CR>
nnoremap <silent> <Leader>f <cmd>lua require('fzf-lua').files()<CR>
nnoremap <silent> <Leader>t <cmd>Texplore */%:t<CR>

nnoremap <C-B> :Buffers
map z <Plug>(leap)
if filereadable('/mnt/c/Windows/System32/clip.exe')
	xnoremap <Leader>c <esc>:'<,'>w !/mnt/c/Windows/System32/clip.exe<CR>
endif

if has('nvim')
	lua << EOF
	local modes = {'n', 'x', 'o'}
	vim.keymap.set(modes, 'n', 'j')
	vim.keymap.set(modes, 'N', 'J')
	vim.keymap.set(modes, 'm', 'h')
	vim.keymap.set(modes, 'e', 'k')
	vim.keymap.set(modes, 'E', 'm')
	vim.keymap.set(modes, 'i', 'l')
	vim.keymap.set(modes, 'I', 'L')
	vim.keymap.set(modes, 'l', 'n')
	vim.keymap.set(modes, 'L', 'N')
	vim.keymap.set(modes, 'h', 'i')
	vim.keymap.set(modes, 'H', 'I')
	vim.keymap.set(modes, 'k', 'e')
	vim.keymap.set(modes, 'K', 'E')

	local nvim_lsp = require 'lspconfig'
	nvim_lsp.rust_analyzer.setup {
		settings = {
			["rust-analyzer"] = {
				diagnostics = {
					enable = true,
				},
				assist = {
					importGranularity = "module",
					importPrefix = "by_self",
				},
				cargo = {
					loadOutDirsFromCheck = true,
				},
				procMacro = {
					enable = true,
				},
			}
		}
	}
	nvim_lsp.gopls.setup {
		settings = {
			gopls = {gofumpt = true, analyses = { modernize = false }},
		}
	}
	nvim_lsp.ts_ls.setup{}
	nvim_lsp.lua_ls.setup{
		settings = {
			diagnostics = {
				disable = {"lowercase-global"}
			}
		}
	}
EOF
endif

command W w

autocmd BufRead,BufNewFile *.md setlocal wrap linebreak nolist | setlocal ft=
if filereadable(expand("~/.vim/local_epilogue"))
	exe 'so' expand("~/.vim/local_epilogue")
endif
autocmd WinEnter,BufWinEnter,FocusGained * checktime
