let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_confirm_extra_conf = 0

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'  # Don't forget to build it from .vim/.../, you'd need `python3-dev` too.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set hlsearch
set autoindent
set nocompatible
set fileformats=unix,dos,mac

syntax on
filetype on

set number
set showmatch
set shiftwidth=2
set softtabstop=2
set tabstop=2
set completeopt=menu,longest,preview
set wildignore=*.o,*~,*.pyc

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
		"
" Highlight JSON as javascript -- usefull if you don't want to load json.vim
autocmd BufNewFile,BufRead *.json set ft=javascript

"Trim trailing whitespace in javascript files
autocmd BufWritePre *.js normal m`:%s/\s\+$//e ``

"Indentation
set smartindent
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
filetype on

map <F4> :cn<CR>
map <F3> :cp<CR>
map <F7> :w<CR> :mak<CR>
map <F8> :mak clean<CR>
map <F9> :w<CR> :mak test<CR>

let c_no_curly_error=1

set matchpairs+=<:>

set visualbell
