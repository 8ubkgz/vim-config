set nu
set hlsearch
set incsearch
set cindent " auto indentation
nmap ; :

" vim regex -> perl
" nnoremap <leader>/ :call eregex#toggle()<CR>
" let g:eregex_backward_delim = '?'
" nnoremap / :M/
" nnoremap ,/ /

set tabstop=4
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

set background=dark
set backspace=2

" autocmd FileType c syn match comment "\v(^\s*//.*\n)+" fold
set foldnestmax=1
autocmd FileType c setlocal foldmethod=syntax
autocmd FileType h setlocal foldmethod=syntax

syntax on
filetype plugin indent on
filetype plugin on

set nocompatible
" filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'hari-rangarajan/CCTree'
	Plugin 'scrooloose/nerdtree'
	Plugin 'chrisbra/Recover.vim'
	Plugin 'vim-scripts/taglist.vim'
	Plugin 'rking/ag.vim'
	Plugin 'sjl/gundo.vim'
	Plugin 'bling/vim-airline'
	Plugin 'scrooloose/syntastic'
	Plugin 'kien/ctrlp.vim'
"	Plugin 'othree/eregex.vim'
call vundle#end()

" togglables for plugins
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TlistToggle<CR>
nnoremap <F5> :GundoToggle<CR>

" backup settings
set undodir=~/.vim/tmp/undo//
" set backupdir=~/.vim/tmp/backup//
" set directory=~/.vim/tmp/swap//
" set backupskip=/tmp/*./private/tmp/*"
" set backup
" set writebackup
" set noswapfile
"
" persist(g)undo tree b/w sessions
set undofile
set history=100
set undolevels=100

