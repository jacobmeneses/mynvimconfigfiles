set number
set tabstop=2
set shiftwidth=2
set expandtab

call plug#begin('~/.local/share/nvim/plugged')
"Para snipmate
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

Plug 'https://github.com/mattn/emmet-vim.git'
" Git, tree y commenter
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'leafgarland/typescript-vim'

" Para encontrar archivos, etc
Plug 'vim-scripts/L9'
" Plug 'vim-scripts/FuzzyFinder'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>


map <C-w>M :vsp term://zsh<CR>
map <C-w>U :sp term://zsh<CR>
map <C-w>Y :tabe term://zsh<CR>


" brinca a la primera terminal de la tab
command! FirstTerm luafile ~/.config/nvim/luascripts/terminal-1.lua
map <C-w>& :FirstTerm<CR>

