filetype plugin on
filetype plugin indent on
set number
set tabstop=2
set shiftwidth=2
set expandtab

nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>

nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+

map <F2> "+y<CR>
" imap <F2> <Esc> "+y<CR>i
map <F3> "+p<CR>
" imap <F3> <Esc> "+p<CR>i

augroup objective-j
	au! BufRead,BufNewFile *.j set filetype=objective-j
	au! Syntax objective-j source ~/.vim/syntax/objj.vim
augroup END

if $COLORTERM == "gnome-terminal" 
  set t_Co=256
  colorscheme molokai
  let g:molokai_original = 1
else
  set t_Co=8
  colorscheme slate
endif
