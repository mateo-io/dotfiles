let mapleader = " "

set noswapfile
set nobackup


" qb for changing tabs for two spaces "
map <Leader>qb :%s/\t/  /g<CR>

"CLIPBOARD"
noremap <Leader>v "+p
vmap <Leader>c "+y

"SET SHORTCUTS"
map ,t <Esc>:bd<CR>
map ,f <Esc>:bd!<CR>
map <F7> :bprevious<CR>
map <F8> :bnext<CR>

let g:html_indent_tags = 'li\|p|div'

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

set list listchars=tab:»·,trail:·,nbsp:·

set relativenumber
set number

"
"Ctr + l to create space between lines
imap <C-l> <CR><Esc>O
map <C-l> <CR><Esc>O

" For plugins to load correctly


" Setup some default ignores CtrP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|)|\_site|node_modules)$',
  \  'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}


" Security
set modelines=0


" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" TABS
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set matchpairs+=<:> " use % to jump between pairs

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

set autoindent
set smartindent


set nocompatible              " be iMproved, required
filetype off                  " required



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'sheerun/vim-polyglot'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required:

syntax on
syntax enable

let delimitMate_expand_cr = 1
let g:polyglot_disabled = ['php']
au BufReadPost *.php set syntax=html

" Color scheme (terminal)
let g:solarized_termcolors=256
colorscheme solarized
set background=light
