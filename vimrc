set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'jeetsukumaran/vim-buffergator'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
highlight LineNr ctermfg=DarkGrey

syntax on
set modeline
set background=dark
set number
set ruler
set statusline=%<%f%h%m%r%=%l,%c%V\ %P
set showmode
set showcmd
set laststatus=2
set nocompatible
set expandtab
set smarttab
set autoindent

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_loc_list_height=3

" yamllint
let g:loaded_syntastic_yaml_yamllint_checker = 1

" Syntastic (old version!)
" let g:loaded_syntastic_puppet_puppetlint_checker=1

" au BufRead,BufNewFile *.json set filetype=json

" fugitive needs an english speaking git
let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'

" shortcuts
nnoremap <silent> <F4>  :NERDTreeToggle<CR>

nnoremap <F8> :set list!<bar>set list?<CR>
inoremap <F8> <C-O>:set list!<CR>

nnoremap <F9> :set paste!<bar>set paste?<CR>
inoremap <F9> <C-O>:set paste!<CR>

nnoremap <F11> :set hls!<bar>set hls?<CR>
nnoremap <F10> :set number!<CR>:set foldcolumn=0<CR>
