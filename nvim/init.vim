set exrc
"set guicursor=
set relativenumber
set nohlsearch
set nu
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set cmdheight=2
set updatetime=50
set colorcolumn=80
set complete+=kspell
set completeopt=menuone,longest
set tags=./tags;,./gems.tags;
set nocompatible
set completeopt=menuone,noinsert,noselect
set list listchars=tab:\|\ \

hi Normal guibg=NONE ctermbg=NONE

filetype plugin on
filetype plugin on

syntax on

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugconf.vim
source ~/.config/nvim/lspconfig.lua
source ~/.config/nvim/maps.vim
source /home/robel/.config/nvim/maps.vim

let mapleader = " "
let g:vimwiki_listsyms = '✗○◐●✓'
let g:calendar_weeknm = 1 " WK01
let g:vimwiki_folding = 'list'
colorscheme gruvbox

autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=perl | endif
hi Normal guibg=NONE ctermbg=NONE

nnoremap <F5> <cmd>so /home/robel/.config/nvim/init.vim<CR>
