"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: https://github.com/sfate
" Source: https://github.com/sfate/dotvimmy
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
" Code
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/tComment'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'vim-ruby/vim-ruby'
" AI
Plug 'github/copilot.vim', { 'do': ':Copilot setup' }
" Marks
Plug 'kshenoy/vim-signature'
" Search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" UI
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'ap/vim-css-color'
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

" Show command
set showcmd

" Display tabs and trailing spaces
set list
set listchars=tab:>-,trail:⋅,nbsp:⋅

" Extremely fast timeout for escape codes
set timeoutlen=1000 ttimeoutlen=0

" Promote spacebar to Leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" Highlight search results
set hlsearch
set incsearch

" Show search result counter
set shortmess-=S

" Search down into subfolders. Provides tab-completion for all file-related tasks
set path+=**

" Highlihgt can be really slow. Limit it for performance reasons
set synmaxcol=350

" Use old regular expression engine
set re=0
set rdt=0

" Undo history
set undofile
set undodir=~/.vim/undo/

" Disable complete to search through tags
set complete-=t
" Disable complete to search through files (very slow)
set complete-=i

" Set n lines to the cursor - when moving vertically using j/k
set scrolloff=5
set sidescrolloff=15

" Set proper non-annoying bells
set noerrorbells
set visualbell

" Default 800ms is too slow
set updatetime=100

" Macros
map Q @@
" set lazydraw

" Disable proper keys
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>
nnoremap <Home>  <NOP>
nnoremap <End>   <NOP>

" jj & jk && kk ESC
inoremap <nowait> jj <Esc>
inoremap <nowait> kk <Esc>
inoremap <nowait> jk <Esc>

" Go over long lines as multi-line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" Fast saving
nnoremap <Leader>w :w!<CR>
nnoremap <silent> <Leader>q :q!<CR>

" " Center the screen
" nnoremap <Space> zz

" Do not show stupid q: window
map q: <NOP>

" Do not show record macros on nav keys
map qj <NOP>
map qk <NOP>

" Do not allow macros on q register
map qq <nop>

" Unfuck my screen
nnoremap <Leader>u :syntax sync fromstart<CR>:redraw!<CR>

" Turn off hightligh
nmap <Leader>/ :noh<CR>

" Hightlight the word under cusror without cursor position change
map <Leader>h :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>

" Enable paste mode for pasting from outside
" Do not use buggy pastetoggle
function! s:TogglePaste()
  if(&paste == 0)
    set paste
    echo "Paste Mode Enabled"
  else
    set nopaste
    echo "Paste Mode Disabled"
  endif
endfunction

map <Leader>p :call<SID>TogglePaste()<CR>

" System buffer copy/paste
vmap <Leader>y "+y
nnoremap <Leader>p "+p

" Use colorshemes for tty and pty
set noshowmode
set bg=dark
let g:gruvbox_italic=0
let g:dark_contrast="hard"
let g:light_contrast="hard"
" :h xterm-true-color
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set t_Co=256
set termguicolors
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

" Resize splits when the window is resized
autocmd VimResized * :wincmd =

" Source Vim configuration file and install plugins
nnoremap <silent><Leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" Use shortcut for useful go-doc info
autocmd FileType go nnoremap <buffer> <Leader>k :GoDoc<CR>

" Go to defintion on a split/vsplit/newtab
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)


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
" => rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

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
let g:ale_go_golangci_lint_package = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'tabline': {
  \   'right': [['close']]
  \ }
\ }

let g:lightline#bufferline#enable_devicons  = 1
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#show_number      = 1
let g:lightline#bufferline#unicode_symbols  = 1
let g:lightline#trailing_whitespace#indicator = '•'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gruvbox + lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChangeBackground changes the background mode based on macOS's `Appearance` setting.
" Also refreshes statusline and bat colors to reflect to the new mode.
function! s:SetColorscheme()
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark   " for dark version of theme
    let $BAT_THEME='gruvbox-dark'
  else
    set background=light  " for light version of theme
    let $BAT_THEME='gruvbox-light'
  endif

  " Actuall set colorscheme
  colorscheme gruvbox

  " Reload statusline
  runtime plugged/gruvbox/autoload/lightline/colorscheme/gruvbox.vim
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()

  " Reload tmux conf
  "
  " Disabled: Currently replaced with outside script which reloads tmux conf and
  " triggers this function per each opened vim session in tmux
  "
  " let command = ["bash", "-c", "tmux source-file ~/.tmux.conf"]
  " call job_start(command, {})
endfunction
command! SetColorscheme call<SID>SetColorscheme()

" Initialize colorscheme
call s:SetColorscheme()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_debug_windows = {
  \ 'vars':  'rightbelow 60vnew',
  \ 'stack': 'rightbelow 10new',
\ }

" Do NOT trigger gocode to build outdated packages (root cause of vim freeze for ~20s on go files save)
let g:go_gocode_autobuild = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on (!buggy)
let g:go_auto_sameids = 0

" enable syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tell FZF to use RG - so we can skip .gitignore files even if not using
" " :GitFiles search
let $FZF_DEFAULT_COMMAND = 'ag --hidden'
" " If you want gitignored files:
" "let $FZF_DEFAULT_COMMAND = 'ag -u'

command! -bang -nargs=* CustomBLines
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')), 1,
    \   fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.. --delimiter=":"'}, 'right:50%'))

function! s:CustomMarks()
  let marks = signature#mark#GetList('used', 'buff_all')
  let entries = []

  for mark in marks
    let name = mark[0]
    let lnum = mark[1]
    let bufnr = mark[2]
    let fname = bufname(bufnr)
    if empty(fname)
      let fname = '[No Name]'
    endif
    call add(entries, printf('%s:%d:%s', fname, lnum, name))
  endfor

  if empty(entries)
    echo 'No marks found'
    return
  endif

  call fzf#run(fzf#wrap({
        \ 'source': entries,
        \ 'sink*': function('s:JumpToMark'),
        \ 'options': '-d ":" -n 2.. --ansi --preview-window ":+{2}+3/3" --preview "bat --color=always --highlight-line {2} {1}" --prompt="Marks> "'
        \ }))
endfunction
command! CustomMarks call<SID>CustomMarks()

function! s:JumpToMark(selected)
  " Example format: /path/to/file:42:A
  let parts = split(a:selected[0], ':')
  if len(parts) < 2
    echo 'Invalid selection'
    return
  endif
  let fname = parts[0]
  let lnum = parts[1]
  execute 'edit ' fname
  execute ': ' lnum
endfunction

" List opened buffers per session
nnoremap <Leader>b        :Buffers<CR>
" Search file by name per repo
nnoremap <Leader>t        :GFiles<CR>
" Search file by name
nnoremap <Leader><Leader> :Files<CR>
" Show repo changes status
nnoremap <Leader>s        :GFiles?<CR>
" Search through project / current folder (pwd)
nnoremap <Leader>f        :Ag<CR>
nnoremap <Leader>*        :Ag <C-R><C-W><CR>
" Search through marks
nnoremap <Leader>m        :CustomMarks<CR>
" Search through opened current buffer
" Disabled: search nav is too clumsy
" nnoremap /                :CustomBLines<CR>
" nnoremap #                :CustomBLines <C-R><C-W><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw (buit-in)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open splits to the right
let g:netrw_altv=1
" Show only non-gitignored files
let g:netrw_list_hide=netrw_gitignore#Hide()
" Always obtains fresh directory listings
let g:netrw_fastbrowse = 0
" Open files in: 1 - hsplit, 2 - vsplit, 3 - newtab, 4 - prevwindow
" let g:netrw_browse_split = 4
" Copy directories recursively by default
let g:netrw_localcopydircmd = 'cp -r'
" Sets the size of window/drawer
let g:netrw_winsize = 20
" Wipe netrw buffer on leave
augroup netrw
  autocmd!
  autocmd FileType netrw setlocal bufhidden=wipe
augroup end
" \n to explore (toggle)
" nnoremap <Leader>n :Lexplore<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DISABLED!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISABILITY_REASON: Use no automatic file change!
""" Remove trailing spaces on a file save
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
"
" DISABILITY_REASON: Use no write with root privileges
""" Force override RO-files with W
"" command W silent execute 'w !sudo tee % > /dev/null' | :e! | syn on
"
" DISABILITY_REASON: Use no automatic write (non proper file reload is in place)
""" Save file on exit to normal mode
"" augroup AUTOSAVE
""   au!
""   autocmd InsertLeave,TextChanged,FocusLost * if &readonly==0 && filereadable(bufname('%')) | silent :w | endif
"" augroup END
"
" DISABILITY_REASON: Use no remappings for copilot
""" Provided function does not work as expected
"" imap <C-L> <Plug>(copilot-accept-line)
"" nnoremap <Leader>l <Plug>(copilot-accept-line)
