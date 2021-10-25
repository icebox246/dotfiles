call plug#begin("~/.config/nvim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' 
Plug 'preservim/nerdtree'
Plug 'tikhomirov/vim-glsl'
" Plug 'kien/ctrlp.vim'

Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'

" Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf.vim'

Plug 'rhysd/vim-clang-format'


Plug 'unblevable/quick-scope'

call plug#end()

set encoding=utf-8

let g:colorizer_auto_color = 1

let mapleader=" "

" go to definition
nmap <silent> gd <Plug>(coc-definition)

" Map ctrl p to better searcher
nmap <silent> <C-p> :Files<CR>

" Setup for emmet
let	g:user_emmet_leader_key="<C-,>" 
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" yank to clipboard
nnoremap <C-y> "+y
vnoremap <C-y> "+y

colorscheme dracula
" let g:airline_theme='angr'
set background=dark

syntax on
set mouse=a
au FileType cpp setl ofu=ccomplete#CompleteCpp
set completeopt=menuone
set number
set tabstop=4
set shiftwidth=4
set hlsearch
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

" Fix for deafault complie flags
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

hi Normal guibg=#282a36 ctermbg=NONE

" Indenting
let g:clang_format#style_options = {
			\ "BasedOnStyle": "Google",
			\ "IndentWidth": 4,
			\ "UseTab": "Never"}
autocmd FileType c,cpp nnoremap <buffer><S-T>T :<C-u>ClangFormat<CR>:w<CR>
nmap <buffer><S-T>T gg=G''zz

" Completion with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent> <leader>f :CocFix<CR>

" Showing completion list with space
inoremap <silent><expr> <c-space> coc#refresh()

" Quick terminal
set splitbelow
nmap <C-T>t :10split term://bash<CR><C-w>k

" Kind of bad idea but may be helpful
command W :w

" Yeeaa that was often enough
command RootWrite :w !sudo tee %

" Binds for tab work
nmap <leader>te :tabnew<Space>
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

" GUI specific things
set guifont=GohuGohuFont\ Nerd\ Font\ 11
set guioptions-=T
set guioptions-=r
set guioptions-=b
set guioptions-=m

" Copy/paste
" nmap <C-S-P> "+gP
vmap <C-S-Y> "+y
nmap <C-S-Y> "+yy

" Commenting
nmap <C-/> gcc
vmap <C-/> gc

" To config
command ToConfig :e C:/Users/Dell/AppData/Local/nvim 

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:neovide_transparency=0.65

" Switch between source and header in c/cpp
autocmd FileType c,cpp map <buffer><silent><leader>s :CocCommand clangd.switchSourceHeader<CR>

" Show quick-scope only on when needed
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" " Add margin to scolling
" set scrolloff=5

" Change directory to current file
command Cdf :cd %:p:h

" Compiling in cpp
autocmd FileType c,cpp map <buffer><leader>b :make %:r<CR>:split term://./%:r<CR>

" Dashboard
let g:dashboard_default_executive ='fzf'

" let g:dashboard_custom_header = [
" \ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
" \ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
" \ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
" \ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
" \ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
" \ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
" \]

let g:dashboard_custom_header =<< trim END
	=================     ===============     ===============   ========  ========
	\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
	||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
	|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
	||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
	|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
	||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
	|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
	||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
	||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
	||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
	||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
	||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
	||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
	||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
	||.=='    _-'                                                     `' |  /==.||
	=='    _-'                        N E O V I M                         \/   `==
	\   _-'                                                                `-_   /
	`''                                                                      ``'
END


autocmd FileType dashboard nnoremap <silent><buffer> <Leader>fh :DashboardFindHistory<CR>
autocmd FileType dashboard nnoremap <silent><buffer> <Leader>ff :DashboardFindFile<CR>
autocmd FileType dashboard nnoremap <silent><buffer> <Leader>tc :DashboardChangeColorscheme<CR>
autocmd FileType dashboard nnoremap <silent><buffer> <Leader>fa :DashboardFindWord<CR>
autocmd FileType dashboard nnoremap <silent><buffer> <Leader>fb :DashboardJumpMark<CR>
autocmd FileType dashboard nnoremap <silent><buffer> <Leader>cn :DashboardNewFile<CR>


let g:dashboard_custom_shortcut_icon={
			\ 'last_session' : '   ',
			\ 'find_history' : 'ﭯ   ',
			\ 'find_file' : '   ',
			\ 'new_file' : '   ',
			\ 'change_colorscheme' : '   ',
			\ 'find_word' : '   ',
			\ 'book_marks' : '   ',
			\}

nohlsearch


