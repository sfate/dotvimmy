"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Sfate
"    Name: Alex Mercer
"    Site: http://evil4live.wordpress.com
"    Mail: alexey.bobyrev@gmail.com
"
" Version: 1.3 - 05/12/11
"    
" Syntax_highlighted:
"    http://git.io/.vimrc
" Raw_version:
"    http://git.io/.vimrc.txt
"
" How_to_Install:
"    $ cd $HOME && git clone git@github.com:Sfate/Vim-environment.git .
"
" How_to_Upgrade:
"    $ cd $HOME && git pull
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Show line numbers
set number

" " Backups places
" set backup
" set backupdir=$HOME/.vim/tmp/
" set directory=$HOME/.vim/tmp/

" Hide mouse cursor on typing
set mousehide

" Split windows below and right to opened window
set splitbelow
set splitright

" Enlarge menu commands area
set wildmenu
set wildmode=list:longest,full

" Replace tab with 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Resize splited windows with Ctrl+arrows
nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>
nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+

" Copy and past text into vim throught other terminal window
map <F2> "+y<CR>
map <F3> "+p<CR>

" Maximize and restore windows
map <F5> :set noequalalways winminheight=0 winheight=9999 helpheight=9999 winminwidth=0 winwidth=9999<CR> 
map <F6> :set winheight=1 winwidth=1 helpheight& equalalways<CR>:wincmd =<CR>
imap <F5> <ESC>
imap <F6> <ESC>

" Enable Obective-J files highlight
augroup objective-j
	au! BufRead,BufNewFile *.j set filetype=objective-j
	au! Syntax objective-j source ~/.vim/syntax/objj.vim
augroup END

" Use colorshemes for tty and pty
if $COLORTERM == "gnome-terminal" 
  set t_Co=256
  colorscheme molokai
  let g:molokai_original = 1
else
  set t_Co=8
  colorscheme slate
endif

