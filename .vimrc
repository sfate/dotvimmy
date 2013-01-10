"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Sfate
"    Name: Alex Mercer
"    Site: http://evil4live.wordpress.com
"    Mail: alexey.bobyrev@gmail.com
"
" Version: 1.6 - 21/09/12
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
" Remove the the old vi behavior
set nocompatible

" Disable buffer cleaning on BuffLeave events
set hidden

" Sets how many lines of history VIM has to remember
set history=700

" Disable swap file / case they will bring only pain in your asshole
set nobackup
set nowritebackup
set noswapfile

" Are you sure?
set confirm

" Enable filetype plugin
filetype plugin on
filetype indent on

" Enable paste mode for pasting from outside
set pastetoggle=

" Highlight pair brackets
set showmatch

" Set to auto read when a file is changed from the outside
set autoread

" Show line numbers
set number

" Hide mouse cursor on typing
set mousehide

" Split windows below and right to opened window
set splitbelow
set splitright

" Enlarge menu commands area
set wildmenu
set wildignore=*~,.svn*,*.bak,*.swp,*.swo
set wildmode=list:longest,full

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Set indenting and replace tab with 2 spaces
set autoindent
set copyindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Highligth current line
set cursorline

" Resize splited windows with Ctrl+arrows
nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>
nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+

" Maximize and restore windows
map <F5> :set noequalalways winminheight=0 winheight=9999 helpheight=9999 winminwidth=0 winwidth=9999<CR>
map <F6> :set winheight=1 winwidth=1 helpheight& equalalways<CR>:wincmd =<CR>
imap <F5> <ESC>
imap <F6> <ESC>

" Enable Obective-J files highlight
autocmd BufRead,BufNewFile *.j       set filetype=objective-j
" Enable nginx conf's files highlight
autocmd BufRead,BufNewFile */nginx/* set filetype=nginx
" Enable Haskell files highlight
autocmd BufEnter *.hsc               set filetype=haskell
" Enable Gemfile highlight
autocmd BufRead,BufNewFile Gemfile   set filetype=gemfile
" Enable config.ru highlight
autocmd BufRead,BufNewFile config.ru set filetype=ruby

" Use colorshemes for tty and pty
if match($COLORTERM, "gnome-terminal") || match($TERM, "xterm-256") || match($TERM, "screen-256")
  set t_Co=256
  colorscheme molokai
  let g:molokai_original = 1
else
  set t_Co=8
  colorscheme slate
endif

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Remove all trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Statusline setup
set statusline=%f       "tail of the filename
" RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

set statusline +=%2*%m%*                "modified flag
" Line of right setup
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

" Turn off needless toolbar on gvim/mvim
set guioptions-=T

" Folding settings:
  " zo[O] - open [all]fold[-s] under cursor
  " zc[C] - close [all]fold[-s] under cursor
  " zM - open all folds
  " zR - close all folds
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

