set encoding=utf-8
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
colorscheme dracula
let g:airline_theme='angr'
set background=dark

filetype plugin on
syntax on
set mouse=i
au FileType cpp setl ofu=ccomplete#CompleteCpp
set completeopt=menuone
set number
set tabstop=4
set shiftwidth=4
set hlsearch

" Fix for deafault complie flags
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

hi Normal guibg=NONE ctermbg=NONE

" Commenting

autocmd FileType cpp nmap <buffer> <C-_> :s/^/\/\/<CR>:nohlsearch<CR>
autocmd FileType cpp nmap <buffer> <C-?> :s/^\/\///<CR>:nohlsearch<CR>

autocmd FileType cpp vmap <buffer> <C-_> :s/^/\/\/<CR>:nohlsearch<CR>
autocmd FileType cpp vmap <buffer> <C-?> :s/^\/\///<CR>:nohlsearch<CR>

" Indenting

nmap <S-T>T gg=G''

" Quick terminal
" 
nmap <C-T>t :vert ter<CR>

" Kind of bad idea but may be helpful
command W :w


nohlsearch
