""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype on                   "helpful
filetype off                  " required!

" let Vundle manage Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" vim plugin bundle control, command model
" :BundleInstall     install
" :BundleInstall!    update
" :BundleClean       remove plugin not in list

"need git
Bundle 'gmarik/vundle'
"independent plugins
Bundle 'mhinz/vim-startify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'Shougo/vimshell.vim'
Bundle 'majutsushi/tagbar'


"Enable detection,plugins and indenting in one step
filetype plugin indent on     " required!
syntax enable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
set t_Co=256

"airline custermization
"let g:airline_theme = 'solarized'
let g:airline_left_sep='›'
let g:airline_right_sep='‹'

" TagBar {
nnoremap <silent> <leader>tt :TagbarToggle<CR>

 " neocomplcache {
            let g:acp_enableAtStartup = 0
            let g:neocomplcache_enable_at_startup = 1
            let g:neocomplcache_enable_camel_case_completion = 1
            let g:neocomplcache_enable_smart_case = 1
            let g:neocomplcache_enable_underbar_completion = 1
            let g:neocomplcache_enable_auto_delimiter = 1
            let g:neocomplcache_max_list = 15
            let g:neocomplcache_force_overwrite_completefunc = 1

            "plugin key-mappings
            imap <C-k>     <Plug>(neosnippet_expand_or_jump)
            smap <C-k>     <Plug>(neosnippet_expand_or_jump)
            xmap <C-k>     <Plug>(neosnippet_expand_target)
            " SuperTab like snippets behavior.
            imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
            smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"
            " For snippet_complete marker.
            if has('conceal')
              set conceallevel=2 concealcursor=i
              endif
            " For snippet_complete marker.
            if has('conceal')
                set conceallevel=2 concealcursor=i
            endif

    " }

"Ctags
set tags=./tags;/,~/.vimtags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"base configuration
set timeoutlen=300 "manpping timeout
set ttimeoutlen=50 "keycode timeout
set mouse=a "enable mouse
set mousehide "hide when type
set history=1000
set undolevels=1000
set ttyfast "assume fast terminal
set viewoptions=folds,options,cursor,unix,slash


set scrolloff=2
set scrolljump=5
set showmatch
set matchtime=2
set number
set showmode
set showcmd
set lazyredraw
"set ruler
set title
set cursorline
set cursorcolumn
"When yout type the first tab,it will complete as much as possible,the
"second tab hit will provide a list,the third and subsequent tabs will
"cycle through completion options so you can complete the file without
"further keys
"
set foldenable                                      "enable folds by default
set foldmethod=syntax                               "fold via syntax of files
set foldlevelstart=99                               "open all folds by
let g:xml_syntax_folding=1                          "enable xml folding


set wildmenu
set wildmode=list:full
set completeopt=menu,preview,longest
set wildignorecase
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store

set splitbelow
set splitright

 " disable sounds
 set noerrorbells
 set novisualbell
 set t_vb=
"This changes the default display of tab and CR chars in list mode
set list
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮

set linebreak
let &showbreak='↪ '

"Editor settings
set ignorecase
set smartcase
set autoindent
set copyindent
set cindent
set cino=b1,g0,N-s,t0,(0,W4)
set smarttab
set magic
set bs=indent,eol,start
set nobackup
set nowrap
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set softtabstop=4
set shiftround          " makes indenting a multiple of shiftwidth
set expandtab           " turn a tab into spaces
set laststatus=2        " the statusline is now always shown
set noshowmode          " don't show the mode ("-- INSERT --") at the bottom

" order
"
set viminfo='20,\"500
set hidden
set autoread

set pastetoggle=<F7>
set mousemodel=popup_setpos
set shortmess+=filmnrxoOtT
" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

" Number of screen lines to use for the command-line
set cmdheight=2

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l
set nohlsearch          " do not highlight searched-for phrases
set incsearch           " ...but do highlight-as-I-type the search string
set gdefault            " this makes search/replace global by default

" enforces a specified line-length and auto inserts hard line breaks when we
" reach the limit; in Normal mode, you can reformat the current paragraph with
" gqap.
set textwidth=80

" this makes the color after the textwidth column highlighted
set colorcolumn=+1

" options for formatting text; see :h formatoptions
set formatoptions=tcroqnj


if v:version >= 704
  set regexpengine=1
endif



if has('unnamedplus')
  " See :h 'clipboard' for details.
  set clipboard=unnamedplus,unnamed
else
  " Vim now also uses the selection system clipboard for default yank/paste.
  set clipboard+=unnamed
endif

"file encode,文件编码，格式
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set termencoding=utf-8
" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that
set nrformats-=octal

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"key map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','
let g:mapleader = ','

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Use arrow key to change buffer"
noremap <left> :bp<CR>
noremap <right> :bn<CR>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove


" Quickly close the current window
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"the best quote complete method"
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf
