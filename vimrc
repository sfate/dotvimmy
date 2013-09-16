"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: https://github.com/Sfate
" Version: 1.9.3 - 16/09/13
"
" How_to_Install_or_Update:
"    !NOTE: This will erase your existing vim setup
"    $ curl -Lo- http://git.io/deploy.sh | bash
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle - Vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Requirements
set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Bundle 'gmarik/vundle'
Bundle 'sheerun/vim-polyglot'
Bundle 'vim-scripts/tComment'
Bundle 'msanders/snipmate.vim'
Bundle 'Sfate/grep.vim'
Bundle 'kien/ctrlp.vim'
" Colors
Bundle 'tomasr/molokai'
Bundle 'michalbachowski/vim-wombat256mod'
Bundle 'sindresorhus/focus'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
filetype plugin indent on

" Enable paste mode for pasting from outside
set pastetoggle=<F2>

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

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Extremely fast timeout for escape codes
set timeoutlen=1000 ttimeoutlen=0

" Highlight serch results
set hlsearch
set incsearch
nmap \/ :noh<CR>

" Set ignorable paths for ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Set path to ack
let g:Ack_Path = 'ack-grep'

" Open Grep results in new tab
let g:Grep_OpenTabWithQuickfixWindow = 1

" Set this to 0 before file save to disable whitespaces trim
let g:strip_whitespaces = 1

" Maximize and restore windows
map <F5> :set noequalalways winminheight=0 winheight=9999 helpheight=9999 winminwidth=0 winwidth=9999<CR>
map <F6> :set winheight=1 winwidth=1 helpheight& equalalways <bar> :wincmd =<CR>
imap <F5> <C-O><F5>
imap <F6> <C-O><F6>

" Disable proper keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <home> <nop>
nnoremap <end> <nop>

" Force override RO-files with W
command W silent execute 'w !sudo tee % > /dev/null'

" Use colorshemes for tty and pty
if filereadable(g:bundle_dir . '/molokai/colors/molokai.vim') && ($TERM =~# "xterm-256" || $TERM =~# "screen-256")
  set t_Co=256
  colorscheme molokai
  let g:molokai_original = 1
else
  set background=dark
  set t_Co=8
  colorscheme slate
endif

" Statusline setup
set statusline=%{'['.tabpagenr().']'} "current tab
set statusline+=\ %f       "tail of the filename
set statusline +=%2*%m%*   "modified flag
" Line of right setup
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

" Remove all trailing whitespaces
function! s:StripTrailingWhitespaces()
  if g:strip_whitespaces == 1 && search('\s\+$', 'n')
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
  endif
endfunction
autocmd BufWritePre * call<SID>StripTrailingWhitespaces()
