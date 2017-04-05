"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: https://github.com/sfate
" Source: https://github.com/sfate/dotvimmy
" Version: 1.9.8 - 5 Apr 2017
"
" How_to_Install_or_Update:
"    !NOTE: This will override your existing vim setup
"    $ curl -Lo- https://git.io/dotvimmy-deploy.sh | bash
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Requirements
set encoding=utf-8
set nocompatible
filetype off

" VundleVim init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-scripts/tComment'
Plugin 'itchyny/lightline.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'haya14busa/vim-auto-programming'
Plugin 'bogado/file-line'
Plugin 'mhinz/vim-startify'
Plugin 'wincent/ferret'
Plugin 'blueyed/vim-qf_resize'
" Colors
Plugin 'morhetz/gruvbox'
call vundle#end()
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

" Enable syntax highlight
syntax on

" Enable paste mode for pasting from outside
set pastetoggle=<F2>

" Highlight pair brackets
set showmatch

" Set to auto read when a file is changed from the outside
set autoread

" Show line numbers
set number
set relativenumber

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
set listchars=tab:>-,trail:⋅,nbsp:⋅

" Extremely fast timeout for escape codes
set timeoutlen=1000 ttimeoutlen=0

" Highlight serch results
set hlsearch
set incsearch
nmap \/ :noh<CR>

" Highlihgt can be really slow. Limit it for performance reasons
set synmaxcol=160

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
command W silent execute 'w !sudo tee % > /dev/null' | :e! | syn on

" Call autoprogramming plugin by <C-x><C-u>
if filereadable(g:vundle#bundle_dir . '/vim-auto-programming/autoload/autoprogramming.vim')
  set completefunc=autoprogramming#complete
endif

" Use colorshemes for tty and pty
if filereadable(g:vundle#bundle_dir . '/gruvbox/colors/gruvbox.vim') && ($TERM =~# "xterm-256" || $TERM =~# "screen-256") || has("gui_running")
  set noshowmode
  set t_Co=256
  set bg=dark
  let g:gruvbox_italic=0
  colorscheme gruvbox
  let g:lightline = {
    \ 'colorscheme': 'gruvbox'
  \ }
else
  set background=dark
  set t_Co=8
  colorscheme slate
  " Statusline setup
  set statusline=%{'['.tabpagenr().']'} "current tab
  set statusline+=\ %f       "tail of the filename
  set statusline +=%2*%m%*   "modified flag
  " Line of right setup
  set statusline+=%=      "left/right separator
  set statusline+=%c,     "cursor column
  set statusline+=%l/%L   "cursor line/total lines
  set statusline+=\ %P    "percent through file
endif
set laststatus=2

" Remove all trailing whitespaces
function! s:StripTrailingWhitespaces()
  if search('\s\+$', 'n')
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
  endif
endfunction
command! StripTrailingWhitespaces call<SID>StripTrailingWhitespaces()

" Highlight custom types
autocmd BufRead,BufNewFile Gemfile*  set filetype=ruby
autocmd BufRead,BufNewFile */nginx/* set filetype=nginx

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_custom_header = get(g:, 'startify_custom_header', [
  \'',
  \'',
  \'                          https://github.com/sfate/dotvimmy',
  \'              __      __        _                          ',
  \'         ____/ /___  / /__   __(_)___ ___  ____ ___  __  __',
  \'        / __  / __ \/ __/ | / / / __ `__ \/ __ `__ \/ / / /',
  \'       / /_/ / /_/ / /_ | |/ / / / / / / / / / / / / /_/ / ',
  \'       \__,_/\____/\__/ |___/_/_/ /_/ /_/_/ /_/ /_/\__, /  ',
  \'                                                  /____/   ',
  \'',
  \'                       Maintainer: https://github.com/sfate',
  \'                                Version: 1.9.7 - 5 Jun 2016',
  \'',
  \ ])
let g:startify_session_dir = $HOME .  '/.data/' . ( has('nvim') ? 'nvim' : 'vim' ) . '/session'
let g:startify_files_number = 6
let g:startify_list_order = [
            \ ['   My most recently used files in the current directory:'],
            \ 'dir',
            \ ['   My most recently used files:'],
            \ 'files',
            \ ['   These are my sessions:'],
            \ 'sessions',
            \ ['   These are my bookmarks:'],
            \ 'bookmarks',
            \ ]
"let g:startify_bookmarks = [ {'c': '~/.vimrc'}, '~/.zshrc' ]
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
"let g:startify_session_delete_buffers = 0
let g:startify_change_to_dir = 0
"let g:startify_change_to_vcs_root = 0  " vim-rooter has same feature
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
            \ 'bundle/.*/doc',
            \ ]
fu! <SID>startify_mapping()
  if getcwd() == $VIM || getcwd() == expand('~')
    nnoremap <silent><buffer> <c-p> :<c-u>CtrlP ~\DotFiles<cr>
  endif
endf
augroup startify_map
  autocmd FileType startify nnoremap <buffer><F2> <Nop>
  autocmd FileType startify call <SID>startify_mapping()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DISABLED!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove trailing spaces at file save
" autocmd BufWritePre * call<SID>StripTrailingWhitespaces()
