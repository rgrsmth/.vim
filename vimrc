" My vimrc started 2018/03/07"
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Vim-Plug plugin initialization
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-startify'
Plug 'jbmorgado/vim-pine-script'
call plug#end()

syntax enable

" ** Input Config **


" Tab behavior
set tabstop=4
set softtabstop=4

" ** -------- **

" ** UI config **
set number
set showcmd
set cursorline
filetype indent on

set wildmenu

set lazyredraw

set showmatch

" searching
set incsearch
set hlsearch


" key bindings
let mapleader=","

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
