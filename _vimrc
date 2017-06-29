set nocompatible

" character encoding for all input- and outputfiles
if has('multi_byte')
    set encoding=utf-8
    "set fileencodings=
endif

source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/macros/matchit.vim
"source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"""""""""""""""""""""""""""""""""""""""
"   my settings -- ma_ko@riseup.net   "
"""""""""""""""""""""""""""""""""""""""
set ai nu noeb ruler sm smd sw=4
set nobackup
set noundofile
set showcmd
set nojoinspaces

set backspace=indent,eol,start
set listchars=tab:>-,trail:-,eol:$
set whichwrap=b,s,h,l,<,>,[,]
"set mps=(:),{:},[:],<:>
set more

set history=2500
set incsearch
set hls

if has('gui_running')
    set mouse=a
    set mousehide
    set guifont=Consolas:h11:cANSI
    set guioptions=egmrLt
    colors inkpot
    syntax off
else
    "colors default
endif

if has('netbeans_intg')
    set autochdir
endif

" my keyboardmacros
map <F2> :!perl -wc %<CR>
map <F5> :!perl -w %<CR>
map <silent> <F11> :diffput<CR>
map <silent> <F12> :diffget<CR>

map <silent> ,c :let @/ = ""<CR>
map <silent> ,a :set cuc! cul!<CR>
map <silent> ,l :1,$l#<CR>

" folding
"if has('folding')
"    set foldenable
"    set fdm=indent
"    set fdc=4
"    set fdi=
"    set fdls=99
"endif

" textwidth
"set textwidth=73

"let perl_fold=1
"let perl_fold_blocks=1

if v:version >= 700
    set infercase
endif

" use english messages
lang message c
runtime delmenu.vim
runtime menu.vim

