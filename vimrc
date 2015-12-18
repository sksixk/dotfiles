" for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" put all Vundle plugins below
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

filetype indent on
filetype plugin on
set backspace=2
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noshowmode
set showmatch
set showtabline=2
set ts=4
syntax on

