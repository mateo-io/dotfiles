filetype on
filetype plugin on
filetype indent on
set clipboard=unnamed
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

noremap = <Space> <nop>

set noswapfile
set nobackup


" qb for changing tabs for two spaces "
map <Leader>qb :%s/\t/  /g<CR>

"CLIPBOARD"
noremap <leader>v "+p
vmap <leader>c "+y

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
      \ 'dir':  '\v[\/](\.(git|hg|svn|)|\_site|node_modules|bower_components)$',
      \  'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
      \}

"let g:ctrlp_working_path_mode = 2
" map <C-p> :CtrlPRoot<CR>
" map <Leader>p :CtrlP<CR>

" Security
set modelines=0

let g:ctrlp_cmd='CtrlPRoot'
let JSHintUpdateWriteOnly=1

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

map <C-n> :NERDTreeToggle<CR>


"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'elzr/vim-json'

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

let g:airline_theme='solarized'
