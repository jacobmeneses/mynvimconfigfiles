set number
set tabstop=3

call plug#begin('~/.local/share/nvim/plugged')
"Para snipmate
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

Plug 'https://github.com/mattn/emmet-vim.git'
" Git, tree y commenter
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'leafgarland/typescript-vim'

" Para encontrar archivos, etc
Plug 'vim-scripts/L9'
" Plug 'vim-scripts/FuzzyFinder'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
" map <C-p> :FufFile<CR>
tnoremap <Esc> <C-\><C-n>
" map <C-m> :vsp term://bash /home/jaykob/test.sh<CR>
map <C-m> :vsp term://bash ./test.sh<CR>

