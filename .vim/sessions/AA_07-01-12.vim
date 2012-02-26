let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
imap <F6> 
imap <F5> 
snoremap <silent> 	 i<Right>=TriggerSnippet()
snoremap  b<BS>
nnoremap <silent>  :TComment
nnoremap <silent> r :TCommentRight
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
snoremap U b<BS>U
snoremap <silent> \__ :TComment
nnoremap <silent> \__ :TComment
snoremap <silent> \_r :TCommentRight
nnoremap <silent> \_r :TCommentRight
snoremap \ b<BS>\
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
xnoremap <silent> \_r :TCommentRight
onoremap <silent> \_r :TCommentRight
xnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
xnoremap <silent> \__ :TCommentMaybeInline
onoremap <silent> \__ :TComment
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <F11> :call conque_term#exec_file()
map <F6> :set winheight=1 winwidth=1 helpheight& equalalways:wincmd =
map <F5> :set noequalalways winminheight=0 winheight=9999 helpheight=9999 winminwidth=0 winwidth=9999 
map <F3> "+p
map <F2> "+y
nmap <C-Down> ++
nmap <C-Up> --
nmap <C-Right> >>
nmap <C-Left> <<
inoremap <silent> 	 =TriggerSnippet()
inoremap <silent> 	 =ShowAvailableSnips()
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set backspace=indent,eol,start
set comments=:#
set commentstring=<%#%s%>
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=700
set iskeyword=@,48-57,_,192-255,$
set nomodeline
set operatorfunc=tcomment#OperatorLine
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set winminheight=0
set winminwidth=0
set winwidth=1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/AA_backup/aa_integr
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +45 app/views/products/index.html.erb
badd +6 app/views/layouts/admin.html.erb
badd +49 config/routes.rb
badd +29 app/models/datafile.rb
badd +40 app/controllers/translator_controller.rb
badd +1 app/views/layouts/application.html.erb
badd +99 app/controllers/products_controller.rb
badd +313 app/controllers/main_controller.rb
badd +13 app/models/product.rb
badd +29 app/models/job.rb
badd +65 db/schema.rb
badd +8 db/migrate/20111221122300_create_products_again.rb
badd +7 db/migrate/20120106222145_rename_product_height_to_height_mm.rb
badd +1 app/controllers/save_controller.rb
badd +12 lib/cryptor.rb
badd +60 app/views/products/_form.html.erb
badd +49 app/models/rip_job_data.rb
badd +19 app/models/layer.rb
badd +11 app/models/template.rb
badd +32 app/controllers/pusher_controller.rb
badd +50 public/stylesheets/scaffold.css
badd +1 app/views/products/manage_layers.html.erb
badd +15 app/controllers/admin_controller.rb
badd +1 app/controllers/layers_controller.rb
badd +0 app/views/layers/index.html.erb
badd +0 app/views/settings/index.html.erb
badd +31 public/javascripts/edit.settings.js
args app/views/products/index.html.erb
edit app/views/layouts/application.html.erb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 20 + 31) / 63)
exe '2resize ' . ((&lines * 19 + 31) / 63)
exe 'vert 2resize ' . ((&columns * 151 + 113) / 227)
exe '3resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
exe '4resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 4resize ' . ((&columns * 75 + 113) / 227)
exe '5resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 5resize ' . ((&columns * 75 + 113) / 227)
exe '6resize ' . ((&lines * 19 + 31) / 63)
exe 'vert 6resize ' . ((&columns * 75 + 113) / 227)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/app/views/application,~/AA_backup/aa_integr/public,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.rb,.css,.js,.html,.yml,.csv
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 30 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 06l
wincmd w
argglobal
edit config/routes.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=IndentAnything()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0),0},0],0=end,0=els,0=when,0=rescue,0=ensure
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 50 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 045l
wincmd w
argglobal
edit app/views/settings/index.html.erb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/app/views/settings,~/AA_backup/aa_integr/public,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.rb,.css,.js,.html,.yml,.csv
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 18 - ((2 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 05l
wincmd w
argglobal
edit app/views/layers/index.html.erb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/app/views/layers,~/AA_backup/aa_integr/public,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.rb,.css,.js,.html,.yml,.csv
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 39 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 032l
wincmd w
argglobal
edit app/controllers/layers_controller.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=IndentAnything()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0),0},0],0=end,0=els,0=when,0=rescue,0=ensure
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/app/views/layers,~/AA_backup/aa_integr/public,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 25 - ((4 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 04l
wincmd w
argglobal
edit app/controllers/main_controller.rb
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=IndentAnything()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0),0},0],0=end,0=els,0=when,0=rescue,0=ensure
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/AA_backup/aa_integr,~/AA_backup/aa_integr/app,~/AA_backup/aa_integr/app/models,~/AA_backup/aa_integr/app/controllers,~/AA_backup/aa_integr/app/helpers,~/AA_backup/aa_integr/config,~/AA_backup/aa_integr/lib,~/AA_backup/aa_integr/app/views,~/AA_backup/aa_integr/app/views/main,~/AA_backup/aa_integr/public,~/AA_backup/aa_integr/test,~/AA_backup/aa_integr/test/unit,~/AA_backup/aa_integr/test/functional,~/AA_backup/aa_integr/test/integration,~/AA_backup/aa_integr/app/*,~/AA_backup/aa_integr/vendor,~/AA_backup/aa_integr/vendor/plugins/*/lib,~/AA_backup/aa_integr/vendor/plugins/*/test,~/AA_backup/aa_integr/vendor/rails/*/lib,~/AA_backup/aa_integr/vendor/rails/*/test,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-head/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionmailer-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/actionpack-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activemodel-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activerecord-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activeresource-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/activesupport-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-client-0.8.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amq-protocol-0.8.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/amqp-0.8.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bcrypt-ruby-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/bunny-0.7.8/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/chronic-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/devise-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/encryptor-1.1.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/i18n-0.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/ext/json/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/json-1.6.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/kgio-2.6.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mime-types-1.17.2/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/minion-0.1.15/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/ext,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/mysql-2.8.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/orm_adapter-0.0.5/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/polyglot-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/rails-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/railties-3.0.3/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/raindrops-0.8.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tmm1-amqp-0.6.4/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/treetop-1.4.10/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/tzinfo-0.3.30/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/unicorn-4.1.1/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/warden-1.1.0/lib,~/.rvm/gems/ruby-1.8.7-head@artaffirm/gems/whenever-0.7.0/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/bundler-1.0.18/lib,~/.rvm/gems/ruby-1.8.7-head@global/gems/rake-0.8.7/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%<%f\ %h%m%r%{rails#statusline()}%=%-14.(%l,%c%V%)\ %P
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/AA_backup/aa_integr/tmp/tags,./tags,./TAGS,tags,TAGS,~/AA_backup/aa_integr/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 196 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
196
normal! 08l
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 20 + 31) / 63)
exe '2resize ' . ((&lines * 19 + 31) / 63)
exe 'vert 2resize ' . ((&columns * 151 + 113) / 227)
exe '3resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 3resize ' . ((&columns * 75 + 113) / 227)
exe '4resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 4resize ' . ((&columns * 75 + 113) / 227)
exe '5resize ' . ((&lines * 20 + 31) / 63)
exe 'vert 5resize ' . ((&columns * 75 + 113) / 227)
exe '6resize ' . ((&lines * 19 + 31) / 63)
exe 'vert 6resize ' . ((&columns * 75 + 113) / 227)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
