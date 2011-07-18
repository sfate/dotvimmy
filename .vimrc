filetype plugin on
filetype plugin indent on
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
set number

nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>

nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+

augroup objective-j
	au! BufRead,BufNewFile *.j set filetype=objective-j
	au! Syntax objective-j source ~/.vim/syntax/objj.vim
augroup END
