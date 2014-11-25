" Don't be compatible with vi
set nocompatible 

filetype off

" Use Vundle to manage plugins
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
source ~/.vim/vimrc.bundles
call vundle#end()

filetype plugin indent on

" More powerful backspacing
set backspace=indent,eol,start

" Larger history storage
set history=1000

" Enalbe syntax highlighting
syntax on

" Set column limit for syntax highlighting
" to prevent longs lines slowing down the world
set synmaxcol=128 


" Optimize scrolling
set ttyfast
set ttyscroll=3
set lazyredraw

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Color settings
set t_Co=256
color tir_black
set cursorline

" JQuery syntax support
autocmd Syntax javascript set syntax=jquery

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

" Matching
set showmatch       " Show matching brackets.
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set ignorecase      " Do case insensitive matching

" Status
set showcmd         " Show (partial) command in status line.
set laststatus=2    " Always show status bar 
set ruler           " Show cursor position
set number          " Show line number

" Indentation
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2 
set linespace=2

autocmd Syntax html,css,ruby,javascript,coffee set tabstop=2 shiftwidth=2 linespace=2

" File Types
autocmd BufRead,BufNewFile *.g set syntax=antlr3

" Indent guides (default toggle key is <leader>ig)
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2 
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=242

" NeoComplCache
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neosnippet#disable_runtime_snippets = { "_": 1, }
autocmd Syntax html let g:neocomplcache_disable_auto_complete=1
set completeopt-=preview

" Snippet
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" Zen-coding 
let g:user_emmet_expandabbr_key='<c-j>'
let g:user_emmet_settings={
\    'indentation': '  ',
\}

" Nerd Tree 
let NERDChristmasTree=1
let NERDTreeWinSize=25
" set filter
let NERDTreeIgnore=['\.mat$', '.*\.mex.*', 'tags', '.*\.jpg$', '.*\.png$', '.*\.jpeg$', '.*\.bmp$',
            \ '\.o$', '.*\~', '.*\.swp$', '\.DS_Store$', '.*\.class$', '\.pyc$',
            \ '\.pdf$', '\.svn$', 
            \ '\.dsp$', '\.dsw$', '\.ncb$', '\.opt$', '\.sln$', '\.suo$', '\.vcxproj$', '\.plg$' , '\.sdf$']
let NERDTreeShowHidden=1
let NERDTreeAutoCenter=1

" Tab Bar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=30

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
            \ [172, 172],
            \ [167, 167],
            \ [141, 141],
            \ [39, 39],
            \ [49, 49],
            \ [82, 82],
            \ [11, 11],
            \ [172, 172],
            \ [167, 167],
            \ [141, 141],
            \ [39, 39],
            \ [49, 49],
            \ [82, 82],
            \ [11, 11],
            \ [172, 172],
            \ [167, 167],
            \ ]
let g:rbpt_max = 32
autocmd Syntax lisp,scheme,clojure RainbowParenthesesToggle


" Key mappings
"nmap <F2> :set hlsearch! hlsearch?<CR> 
nmap <F3> :set paste! paste?<CR> 
nmap <F4> :IndentGuidesToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>
nmap <F7> :Autoformat<CR><CR>

" copy content of current file to system clipboard
nmap <C-c> ggVG"+y''

" copy the selected content to system clipboard
vmap <C-c> "+y

" paste content of system clipboard
nmap <C-p> "+p

" delete current tab, remove it from tagbar
nmap <C-x> :Tbbd<CR>    

" For local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" w!! to sudo & wirte a file
cmap w!! w !sudo tee > /dev/null %

" Extra commands 
command W w
command WQ wq
command Wq wq
command Q q
command Qa qa
command QA qa

" disable auto comment
"set paste

" set highlight search
set hlsearch

" set EasyMotion_leader_key
let g:EasyMotion_leader_key = '<Leader>'

" alias unnamed register to the + register, which is the X Window clipboard
"set clipboard=unnamedplus

" set fileencodings to avoid messy code
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" set the cursor as the last viewing line of the file
" If this doesn't work, a common problem is not having ownership of your
" ~/.viminfo file. If this is the case, then run:
" sudo chown user:group ~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
