"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
" Initiate plugins with Plug
call plug#begin(stdpath('data').'/plugged')
    Plug 'frazrepo/vim-rainbow'						" Vim-rainbow - Colorize bracket pairs
    Plug 'junegunn/fzf' 							" Fuzzy finder - Easy file search
    Plug 'dracula/vim', { 'as': 'dracula' }			" Dracula - Vim theme
	Plug 'joshdick/onedark.vim'						" Onedark - Vim theme
	Plug 'morhetz/gruvbox'							" Gruvbox - Vim theme
    Plug 'itchyny/lightline.vim'					" Lightline - Customize bottom status bar
	Plug 'scrooloose/syntastic'						" Syntastic - Syntax checker
    Plug 'scrooloose/nerdtree'						" Nerd tree - File manager, vertical horizontal and tab splitting support
    Plug 'tpope/vim-fugitive'						" Fugitive - Git support
    Plug 'ryanoasis/vim-devicons'					" Devicons - Used in nerd tree syntax highlight plugin
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" Nerd tree syntax highlight - Display common file extension icons with colors. Requires Devicons
    Plug 'mhinz/vim-startify'						" Startify - customized vim home page
    Plug 'MaxMEllon/vim-jsx-pretty'					" JSX-pretty - Syntax highlighting and indenting for JSX
	Plug 'ap/vim-css-color'							" Css-color - Highlight css colors
    Plug 'prettier/vim-prettier', { 'do': 'yarn add', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'pangloss/vim-javascript'					" Pangloss - Javascript syntax highlighting and indenting
    Plug 'rust-lang/rust.vim'						" Rust -  Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.
	Plug 'sheerun/vim-polyglot'						" Various language syntaxing support
call plug#end()

" Set python providers for python support
let g:python3_host_prog = '/usr/bin/python3.8'

" Set italic comments for onedark
" let g:onedark_terminal_italics = 1

" Enable terminal true colors
set termguicolors
set background=dark

" Tab -> 4 spaces
set tabstop=4

" User Interface Options "
set cursorline
set number
set noerrorbells
set title

" Miscellaneous Options "
set autoread
set confirm
set undolevels=999
set noshowmode

"Case insensitive searching
set ignorecase

"Will automatically switch to case sensitive if you use any capitals
set smartcase

" Clear search highlighting with Escape key
nnoremap <silent><esc> :noh<return><esc>

set nocompatible
filetype plugin indent on

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Enable mouse. Hold Shift while selecting to copy(Shift + Ctrl + c) to clipboard
set mouse=a
set nocursorline

" Rainbow config
let g:rainbow_active = 1

" Lightline config
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste', 'sep1' ],
    \           [ 'readonly', 'filename', 'modified' ],
    \           [ ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'filetype' ] ]
    \ }

let g:lightline.inactive = {
    \ 'left': [ [ 'mode', 'paste', 'sep1' ],
    \           [ 'readonly', 'filename', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'filetype' ] ]
    \ }

let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ ] }

let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

let g:lightline.component = {
    \ 'mode': '%{lightline#mode()}',
    \ 'absolutepath': '%F',
    \ 'relativepath': '%f',
    \ 'filename': '%t',
    \ 'modified': '%M',
    \ 'bufnum': '%n',
    \ 'paste': '%{&paste?"PASTE":""}',
    \ 'readonly': '%R',
    \ 'charvalue': '%b',
    \ 'charvaluehex': '%B',
    \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
    \ 'fileformat': '%{&ff}',
    \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
    \ 'percent': '%3p%%',
    \ 'percentwin': '%P',
    \ 'spell': '%{&spell?&spelllang:""}',
    \ 'lineinfo': '%3l:%-2v',
    \ 'line': '%l',
    \ 'column': '%c',
    \ 'close': '%999X X ',
    \ 'winnr': '%{winnr()}',
    \ 'sep1': ''
    \}

let g:lightline.mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'R',
    \ 'v' : 'V',
    \ 'V' : 'L',
    \ "\<C-v>": 'B',
    \ 'c' : 'C',
    \ 's' : 'S',
    \ 'S' : 'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ 't': 'T',
    \ }

let g:lightline.separator = {
    \   'left': '', 'right': ''
    \}
let g:lightline.subseparator = {
    \   'left': '', 'right': '' 
    \}

let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator

let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

" Nerd tree config
map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
" Highlight full file name instead of icon
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

set encoding=utf8
scriptencoding utf-8

" Colorscheme
colorscheme onedark
set fillchars=vert::
highlight Normal guibg=none guifg=none

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif
