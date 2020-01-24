" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"
"" PLUGIN MANAGEMENT
packadd minpac
call minpac#init()


call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('MarcWeber/vim-addon-mw-utils')
call minpac#add('garbas/vim-snipmate')
call minpac#add('honza/vim-snippets')
call minpac#add('tpope/vim-repeat')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('preservim/nerdtree',{ 'on':  'NERDTreeToggle' })
call minpac#add('tpope/vim-surround')
call minpac#add('jeffkreeftmeijer/vim-numbertoggle')
call minpac#add('fatih/vim-go',{ 'do': ':GoUpdateBinaries' })
call minpac#add('nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' })
call minpac#add('tpope/vim-fugitive')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('luochen1990/rainbow')
call minpac#add('preservim/nerdcommenter')

command! Pu call minpac#update()
command! Pc call minpac#clean()

"" Addition configs
"
" vim-go settings
" format with goimports instead of gofmt

let g:go_fmt_command = "goimports"

" Random Configs
set number relativenumber

map <C-t> :NERDTreeToggle<CR>

" Remap the leader key to the spacebar
let mapleader = "'"

" Run commands with semicolon
nnoremap ; :

" Save the current buffer using the leader key
noremap <Leader>w :w<CR>

" Save and exit Vim using the leader key
noremap <Leader>e :wq<CR>

" Exit without saving using the leader key
noremap <Leader>q :q!<CR>

" Enable syntax highlighting
syntax on


" Set the shell
set shell=/usr/local/bin/fish

" Line numbers
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>

" Clear highlighting
nnoremap <leader>c :nohl<CR>

" Paste mode
nnoremap <leader>pa :set nopaste!<CR>

" Pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Remap jk to <ESC>
inoremap jk <ESC>

" Others
filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus
set smartindent
set textwidth=80
set showmatch
set hlsearch
set incsearch



