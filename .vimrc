execute pathogen#infect()

colorscheme molokai


" enable syntax processing
syntax enable

" 4 spaces per tab
set tabstop=4

" 4 spaces per tab when editing
set softtabstop=4

" turn tabs to spaces
set expandtab

" show line numbers
set number

" show command
set showcmd

" highlight line and column
set cursorline
set cursorcolumn

filetype indent on
filetype plugin on


" show autocomplete menu
set wildmenu

set lazyredraw

set showmatch

" search as characters are entered
set incsearch
set hlsearch

" folds
set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za

set history=700

" 7 lines to cursor
set so=7

set wildignore=*.o,*~,*.pyc

set ruler

set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set magic " for regex

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set t_Co=256
    set guitablabel=%M\ %t
endif

set encoding=utf8
set ffs=unix,dos,mac

set ai "auto indent
set si "smart indent
set wrap

"""""""""""""""""""""""""""""""""""""""""""
" remaps
let mapleader = ","
let g:mapleader = ","


""""""""""""""""""""""""""""""""""""""""""
" Plugins

" NERDtree
autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" fugitive

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0


" rust.vim
let g:rustfmt_autosave=1

