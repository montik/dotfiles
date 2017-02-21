syntax on
set number

"tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

set incsearch
set hlsearch

set colorcolumn=80


" jk is escape
inoremap jk <esc>

" close buffer without closing splitview <bar> concatenate commands
nmap ,d :b#<bar>bd#<CR>

" pathogen
execute pathogen#infect()

" MAPS
let mapleader=","

" save session
nnoremap <leader>s :mksession<CR>

" open ag.vim
nnoremap <leader>a :Ag

noremap ; :

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


filetype indent on

set wildmode=longest,list
