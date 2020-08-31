set encoding=utf-8
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme dracula
set background=dark
let g:airline_theme='angr'

filetype plugin on
au FileType c setl ofu=ccomplete#CompleteCpp
set completeopt=menuone

