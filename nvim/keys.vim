nnoremap <c-p> : <c-u>fzf<cr>
noremap <c-n> :NERDTreeToggle<cr>

" uppercase the current word
inoremap <c-u> <esc>bveUwa
nnoremap <c-u> bveUw

" open the keys.vim
nnoremap <leader>ev :vsplit ~/.config/nvim/keys.vim<cr>

" source new vim config
nnoremap <leader>sv :source $MYVIMRC<cr>

" train my fingers:
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
