"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: https://github.com/sfate
" Source: https://github.com/sfate/dotvimmy
" Last_Edit: 26/May/2022
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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins (via vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/tComment'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'sfate/vim-auto-programming', { 'branch': 'neovim' }
Plug 'mhinz/vim-startify'
Plug 'wincent/ferret'
Plug 'luochen1990/rainbow'
Plug 'andymass/vim-matchup'
Plug 'dense-analysis/ale'
Plug 'dhruvasagar/vim-zoom'
" Colors
Plug 'morhetz/gruvbox'
call plug#end()
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

" Tweaks netrw browse
let g:netrw_altv=1          " open splits to the right
let g:netrw_list_hide=netrw_gitignore#Hide()

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

" Show command
set showcmd

" Display tabs and trailing spaces
set list
set listchars=tab:>-,trail:⋅,nbsp:⋅

" Extremely fast timeout for escape codes
set timeoutlen=1000 ttimeoutlen=0

" Highlight search results
set hlsearch
set incsearch
nmap \/ :noh<CR>

" Search down into subfolders. Provides tab-completion for all file-related tasks
set path+=**

" Highlihgt can be really slow. Limit it for performance reasons
set synmaxcol=200

" Use old regular expression engine
set re=0

" Undo history
set undofile
set undodir=~/.vim/undo/

" Disable complete to search through tags
set complete-=t

" Macros
nnoremap Q @@
" set lazydraw

" Disable proper keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <home> <nop>
nnoremap <end> <nop>

" jk ESC
inoremap jk <Esc>

" Call autoprogramming plugin by <C-x><C-u>
set completefunc=autoprogramming#complete

" Use colorshemes for tty and pty
set noshowmode
set t_Co=256
set bg=dark
let g:gruvbox_italic=0
colorscheme gruvbox
let g:lightline = {
  \ 'colorscheme': 'gruvbox'
\ }
set laststatus=2

" Maximize windows
function! s:MaximizeSplit()
  set noequalalways winminheight=0 winheight=9999 helpheight=9999 winminwidth=0 winwidth=9999
endfunction
command! MaximizeSplit call<SID>MaximizeSplit()

" Normalize windows
function! s:NormalizeSplit()
  set winheight=1 winwidth=1 helpheight& equalalways
  wincmd =
endfunction
command! NormalizeSplit call<SID>NormalizeSplit()

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
  \'                        Last Edit:              26/May/2022',
  \'',
  \ ])
let g:startify_session_dir = $HOME .  '/.data/' . ( has('nvim') ? 'nvim' : 'vim' ) . '/session'
let g:startify_enable_special         = 0
let g:startify_files_number           = 10
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 0
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1
let g:startify_update_oldfiles        = 1
let g:startify_list_order = [
            \ ['   Recent files:'],
            \ 'files',
            \ ['   Recent files within current directory:'],
            \ 'dir',
            \ ['   Sessions:'],
            \ 'sessions',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ]
let g:startify_bookmarks = [
            \ {'v': '~/.vimrc'},
            \ {'b': '~/.bashrc'},
            \ {'t': '~/.tmux.conf'}
            \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
            \ 'bundle/.*/doc',
            \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => matchup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  let g:matchup_enabled = 0
else
  let g:matchup_enabled = 1
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine (:IndentLinesToggle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_ruby_rubocop_executable = 'bundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DISABLED!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISABILITY_REASON: Use no automatic file change!
"" Remove trailing spaces on a file save
"" function! s:StripTrailingWhitespaces()
""   if search('\s\+$', 'n')
""     let _s=@/
""     let l = line(".")
""     let c = col(".")
""     %s/\s\+$//e
""     let @/=_s
""     call cursor(l, c)
""   endif
"" endfunction
"" command! StripTrailingWhitespaces call<SID>StripTrailingWhitespaces()
"" autocmd BufWritePre * call<SID>StripTrailingWhitespaces()
" DISABILITY_REASON: Use no write with root privileges
"" Force override RO-files with W
"" command W silent execute 'w !sudo tee % > /dev/null' | :e! | syn on
