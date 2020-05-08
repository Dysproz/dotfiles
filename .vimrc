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

" Set system clipboard
set clipboard=unnamedplus
inoremap <C-S-v> <ESC>"+pa
vnoremap <C-S-c> "+y
vnoremap <C-S-d> "+d
