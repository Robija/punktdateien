call plug#begin('~/.vim/plugged')
"lug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'suan/vim-instant-markdown'
Plug 'jamshedvesuna/vim-markdown-preview'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Color Schemes
Plug 'endel/vim-github-colorscheme'
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'noahfrederick/vim-hemisu'
Plug 'vim-scripts/Wombat'
Plug 'jacoborus/tender.vim'
Plug 'edkolev/tmuxline.vim'
call plug#end()

set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set splitbelow splitright
set expandtab
set relativenumber number
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

inoremap jk <Esc>
inoremap kj <Esc> 
nnoremap . :
nnoremap : .

set wildmenu
set path+=** " instead of ctrlp. just use :find (portion of filename or/and * for fuzzy search)
" sets a dictionary search
set dict+=/usr/share/dict/words/dict.txt
set complete+=k

set tabstop=4
set shiftwidth=4
colo seoul256 
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"-------------------
"Syntax relevant
"-------------------

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType js  set omnifunc=javascriptcomplete#CompleteJS

"-----------------------
"UNDO
"-----------------------
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif


"-------------------- 
" Snippets
"-------------------- 
nnoremap ,html :-1read /home/falza/.vim/snippets/.skeleton.html<CR>
