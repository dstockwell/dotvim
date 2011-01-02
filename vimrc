call pathogen#runtime_append_all_bundles()

set nocompatible
set dir=~/local/tmp

" Indent / format
filetype plugin indent on
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set nojoinspaces

" Behavior
set whichwrap=
set backspace=eol,indent
set autoread
au! BufWritePost ~/.vim/vimrc source %

" Display
set hlsearch
set incsearch
set nowrap
set number
set ruler
set showcmd
set spell
set laststatus=2
set guioptions=

" Style
syntax on
colorscheme mint
set cursorline
hi cursorline guibg=#444444
hi StyleError gui=undercurl guisp=#33CC33
set colorcolumn=80,100
hi ColorColumn guibg=#3A3A3A

" Make everything the same color
hi SignColumn guifg=#CCCCCC guibg=#333333
hi LineNr guifg=#CCCCCC guibg=#333333
hi VertSplit guifg=#333333 guibg=#333333
set fillchars=

" Plugin setup
call arpeggio#load()

" Custom
nmap K i<enter><esc>k$
nnoremap J gJ
Arpeggio noremap oj :Ku file<return>
Arpeggio noremap kl :Ku buffer<return>
Arpeggio noremap sf :w<return>
Arpeggio noremap bw :BW<return>

" Use <tab> to indent
nmap <tab> >>
nmap <s-tab> <<
vmap <tab> >gv
vmap <s-tab> <gv

" Make return move down
map <return> <down>

