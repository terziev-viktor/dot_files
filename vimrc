set nowrap
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number
" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
" set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

nnoremap { {zz
nnoremap } }zz
" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden
" Rendering
set ttyfast
" Status bar
set laststatus=2
" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ic
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" ---------- Plugin manager ----------
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'

call plug#end()

set updatetime=250

" Enable true colors (important for hex colors)
set termguicolors

" GitGutter settings
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 1

" Auto-enable line highlights
autocmd VimEnter * GitGutterLineHighlightsEnable

" ========================
" IntelliJ-like colors
" ========================

" Sign column (gutter background)
highlight SignColumn guibg=#2b2b2b

" Added (green)
highlight GitGutterAdd guifg=#6A8759 guibg=#313c2b
highlight GitGutterAddLine guibg=#313c2b

" Modified (blue)
highlight GitGutterChange guifg=#6897BB guibg=#2f3b4c
highlight GitGutterChangeLine guibg=#2f3b4c

" Deleted (red)
highlight GitGutterDelete guifg=#CC7832 guibg=#4c2b2b
highlight GitGutterDeleteLine guibg=#4c2b2b

" Modified + deleted (rare case)
highlight GitGutterChangeDelete guifg=#9876AA guibg=#3a314a
highlight GitGutterChangeDeleteLine guibg=#3a314a

" Optional: make signs cleaner (no ugly backgrounds)
highlight clear GitGutterAddInvisible
highlight clear GitGutterChangeInvisible
highlight clear GitGutterDeleteInvisible
