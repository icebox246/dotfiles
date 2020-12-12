set encoding=utf-8
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mattn/emmet-vim'
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'OmniSharp/omnisharp-vim'
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let g:colorizer_auto_color = 0
let g:syntastic_cs_checkers = ['code_checker']

let mapleader=" "

" Setup for emmet
let	g:user_emmet_leader_key="<C-y>" 
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

colorscheme dracula
let g:airline_theme='angr'
set background=dark

filetype plugin on
syntax on
set mouse=a
au FileType cpp setl ofu=ccomplete#CompleteCpp
au FileType css set ofu=csscomplete#CompleteCSS
set completeopt=menuone
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set hlsearch
set wildmenu
set incsearch

" Fix for deafault complie flags
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

hi Normal guibg=#282a36 ctermbg=NONE

" Commenting

nmap <C-_> :Comment <CR>
vmap <C-_> :Comment <CR>

" autocmd FileType cpp nmap <buffer> <C-_> :s/^/\/\/<CR>:nohlsearch<CR>
" autocmd FileType cpp nmap <buffer> <C-/> :s/^/\/\/<CR>:nohlsearch<CR>
" autocmd FileType cpp nmap <buffer> <C-?> :s/^\/\///<CR>:nohlsearch<CR>

" autocmd FileType cpp vmap <buffer> <C-_> :s/^/\/\/<CR>:nohlsearch<CR>
" autocmd FileType cpp vmap <buffer> <C-/> :s/^/\/\/<CR>:nohlsearch<CR>
" autocmd FileType cpp vmap <buffer> <C-?> :s/^\/\///<CR>:nohlsearch<CR>

" I hate Ex mode on Q (there is gQ)
nmap Q <Nop>

" Indenting

nmap <S-T>T gg=G''

" Quick terminal
" 
nmap <C-T>t :vert ter<CR>

" Kind of bad idea but may be helpful
command W :w

" Yeeaa that was often enough
command RootWrite :w !sudo tee %

" Binds for tab work
nmap te :tabnew<Space>
nmap tn :tabn<CR>
nmap tp :tabp<CR>

" GUI specific things
set guifont=FiraCode\ Nerd\ Font\ 12
set guiheadroom=0
set guioptions-=T
set guioptions-=r
set guioptions-=b
set guioptions-=m
"" Copy/paste
" nmap <C-S-V> "+gP
" imap <C-S-V> <ESC>l<C-S-V>i
vmap <C-y> "+y

" Completion

nohlsearch
