set nu
set hlsearch
nmap ; :


syntax on
filetype plugin indent on
filetype plugin on

set nocompatible
" filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'hari-rangarajan/CCTree'
	Plugin 'scrooloose/nerdtree'
call vundle#end()

