" Set leader to space
let mapleader=" "
set encoding=utf-8

" Install plugins
call plug#begin('~/.vim/plugged')
" Plugin for code indetation for Python
Plug 'vim-scripts/indentpython.vim'
" Plugin for code autocomplete
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" Plugin for checking syntax
Plug 'vim-syntastic/syntastic'
" Plugin for PEP 8 check
Plug 'nvie/vim-flake8'
" Plugins for color schemes
Plug 'jnurmine/Zenburn'
" Plugin for file tree
Plug 'scrooloose/nerdtree'
" Plugin for super search
Plug 'kien/ctrlp.vim'
" Plugin for auto pairs
Plug 'jiangmiao/auto-pairs'
" Plugin for rendering YAML
Plug 'stephpy/vim-yaml'
call plug#end()

" Configure YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Configure syntax highlight
let python_highlight_all=1
syntax on

" configure colors
set background=dark
colorscheme zenburn

" Bind key to show NERDtree
map <C-t> :NERDTreeToggle<CR>

" Case insensitive search, except for search with capital letters
set ignorecase
set smartcase

" Set autoindent for new lines
set autoindent

" Set line numbers
set number

" ALways show cursor position
set ruler

" Use 4 spaces for tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Turn on the Wild menu
set wildmenu

" Highlight search results
set hlsearch

" Split open at the bottom and right
set splitbelow splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set system clipboard
set clipboard=unnamedplus
inoremap <C-S-v> <ESC>"+pa
vnoremap <C-S-c> "+y
vnoremap <C-S-d> "+d

" Enable folding
set foldmethod=indent
set foldlevel=99

" Flag unnecessary whitespaces
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Set transparent background
hi Normal guibg=NONE ctermbg=NONE
