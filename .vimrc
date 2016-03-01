set t_Co=256
set enc=utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,prc,ucs-bom,cp936
colorscheme molokai
set guifont=Consolas:h9
let g:molokai_original = 1

set runtimepath+=$GOROOT/misc/vim

"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
call pathogen#infect()

nnoremap <silent> <F3> :Grep<CR>

let mapleader = ","
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 0 
"let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplMoreThanOne = 0
"let g:nerdtree_tabs_open_on_console_startup=1
"let g:nerdtree_tabs_open_on_gui_startup=1
set laststatus=2
let g:buftabs_in_statusline=1

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|MiniBuffExplorer|miniBufExpl"
let g:NERDTreeWinSize = 20
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.pyo$']

set hlsearch

set foldmethod=indent
set foldlevel=99
set expandtab
set textwidth=200
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set nu
set splitright
set mouse=a

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-=> <c-w>=

noremap <F2> :bprev<CR>
noremap <F3> :bnext<CR>

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!<CR>

syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

autocmd bufnewfile *.py,*.pyx,*.pyi,*.pyd call setline(1,'#!/usr/bin/env python') | 
          \ call setline(2,'#-*-coding: utf-8-*-') | 
          \ call setline(3,'') | 
          \ call setline(4,'# Version: 0.1') | 
          \ call setline(5,'# Author: Anson Tang <anson.tkg@gmail.com>') | 
          \ call setline(6,'# License: Copyright(c) 2015 Anson.Tang') | 
          \ call setline(7,'# Summary: ') | 
          \ call setline(8,'') | 
          \ exe "normal G"



