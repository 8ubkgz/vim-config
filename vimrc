set nu
" set hlsearch
set incsearch
set cindent " auto indentation
" set laststatus=2 " enable airline status bar

:hi Search ctermbg=Grey " change search highlight color

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
	Plugin 'majutsushi/tagbar'
	Plugin 'mhinz/vim-signify'
	Plugin 'mhinz/vim-startify'
	Plugin 'airblade/vim-gitgutter'
"	Plugin 'othree/eregex.vim'
call vundle#end()

" togglables for plugins
nnoremap <F1> :TagbarToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F4> :CCTreeTraceReverse <C-R>=<SNR>11_CCTreeWindowGetHiKeyword()<CR><CR>
nnoremap <F5> :CCTreeTraceForward <C-R>=<SNR>11_CCTreeWindowGetHiKeyword()<CR><CR>
" nnoremap <F6> :s:FindOpenWindow('CCTree-View') == 1?CCTreeWindowToggle<CR>
nnoremap <F6> :CCTreeWindowToggle<CR>
nnoremap <F7> :GundoToggle<CR>
nnoremap <F8> :TlistToggle<CR>
map <F11> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

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

" CCTree auto load
function! LoadCCTree()
    if filereadable('cscope.out')
	        CCTreeLoadDB cscope.out
    endif
endfunc
autocmd VimEnter * call LoadCCTree()
