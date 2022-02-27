"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             PlanetRoast .vimrc                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set linebreak
set timeoutlen=1000 ttimeoutlen=10
set tw=80
set incsearch " Jump to search word as you type
set clipboard=unnamedplus " Sync system clipboard to yank register
set foldmethod=indent
syntax enable


" Browsing for files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_banner = 0 " Disables Netrw's huge branding
let g:netrw_liststyle = 0 " Thin style
let g:netrw_browse_split = 3 " Opens files in new tabs


" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme pablo
set bg=dark
highlight StatusLine cterm=NONE ctermfg=6 ctermbg=0
highlight Folded ctermbg=Black ctermfg=LightGray


" Keyboard remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F1> <Esc>
inoremap <C-u> ()<Left>
inoremap <C-e> {}<Left>
inoremap <C-o> []<Left>
inoremap <C-a> <><Left>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>


" Finding files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path=$PWD/**
"set path+=** " Allows find to look in subfolders
set wildmenu " Show find results in a menu
set wildignorecase
set wildignore+=**/tmp/**
set wildignore+=**/node_modules/**


" Disable 'Entering Ex mode'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap Q <Nop>


" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai " use autoindentation
set si " use smart indentation
set noet " use tabs instead of spaces
set ts=4 " tabs should be 4 spaces long
set sw=4 " autoindent width should be 4 spaces long

" converts spaced documents into tabs
noremap ,tab :set noet \| retab! 2 \| :set ts=4 sw=4 <CR>

" converts tabbed documents into spaces
noremap ,spa :set et ts=2 sw=2 \| retab <CR>


" Markdown Helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ,h1 o<ESC>80i=<ESC>o
noremap ,h2 o<ESC>80i-<ESC>o


" HTML div tag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ,div A<div class=""></div><ESC>cit<CR><CR><ESC>ki<tab>
