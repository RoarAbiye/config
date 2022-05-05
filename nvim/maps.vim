" telescope maps
nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
nnoremap <Leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

" split and close maps
nnoremap <Leader><leader>v <cmd>vsplit<CR>
nnoremap <Leader><leader>h <cmd>split<CR>
nnoremap <Leader><leader>c <cmd>close<CR>
nnoremap <Leader><leader>n <cmd>new<CR>

" " Copy to clipboard
vnoremap  <Leader>y  "+y
vnoremap  <Leader>y  "+y
nnoremap  <Leader>Y  "+yg_
nnoremap  <Leader>yy  "+yy

" " Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

"inoremap < <><Esc>i
" inoremap {<CR> {<CR>}<ESC>O
" inoremap { {}<Esc>i
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i

map <Leader>pl :NERDTree<CR>

nnoremap <leader>l <cmd>vertical res -5<CR>
nnoremap <leader>h <cmd>vertical res +5<CR>
