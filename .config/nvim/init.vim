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
    Plug 'mxw/vim-jsx'								" JSX - Syntax highlighting and indenting for JSX
    Plug 'mhinz/vim-startify'						" Startify - customized vim home page
    Plug 'MaxMEllon/vim-jsx-pretty'					" JSX-pretty - Syntax highlighting and indenting for JSX
	Plug 'ap/vim-css-color'							" Css-color - Highlight css colors
    Plug 'prettier/vim-prettier', { 'do': 'yarn add', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'pangloss/vim-javascript'					" Pangloss - Javascript syntax highlighting and indenting
    Plug 'rust-lang/rust.vim'						" Rust -  Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.
call plug#end()

" Set python providers for python support
let g:python_host_prog  = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.6'

" Set italic comments for onedark
let g:onedark_terminal_italics = 1

" Syntastic config
let g:syntastic_js_checkers = ['syntastic-checkers-javascript']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable terminal true colors
set termguicolors
set background=dark
colorscheme gruvbox

" Tab -> 4 spaces
set tabstop=4

" User Interface Options "
set cursorline
set number
set noerrorbells
set title
" set visualbell

" Miscellaneous Options "
set autoread
set confirm
set undolevels=999

" Enable mouse. Hold Shift while selecting to copy(Shift + Ctrl + c) to clipboard
set mouse=a
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow config
let g:rainbow_active = 1

""""""""""""""" Lightline config - Like powerline"""""""""""""""
" let g:lightline = {
"		\ 'colorscheme': 'onedark',
"		\ 'component': {
"		\ 	'lineinfo': ' %3l:%-2v',
"		\ },
"		\ 'component_function': {
"		\   'readonly': 'LightlineReadonly',
"		\   'fugitive': 'LightlineFugitive'
"		\ },
"		\ 'separator': { 'left': '', 'right': '' },
"		\ 'subseparator': { 'left': '', 'right': '' }
"		\ }

"function! LightlineReadonly()
"	return &readonly ? '' : ''
"endfunction
"function! LightlineFugitive()
"	if exists('*fugitive#head')
"		let branch = fugitive#head()
"		return branch !=# '' ? ''.branch : ''
"	endif
"	return ''
"endfunction

""""""""""""""" Lightline config - Modern""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ 'component': {
	\   'lineinfo': '⭡ %3l:%-2v',
	\ },
	\ 'component_function': {
	\   'readonly': 'LightlineReadonly',
	\   'fugitive': 'LightlineFugitive'
	\ },
	\ 'separator': { 'left': '⮀', 'right': '⮂' },
	\ 'subseparator': { 'left': '⮁', 'right': '⮃' },
	\ 'active': {
	\   'right': [ [ 'syntastic', 'lineinfo' ],
	\              [ 'percent' ],
	\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
	\ },
	\ 'component_expand': {
	\   'syntastic': 'SyntasticStatuslineFlag',
	\ },
	\ 'component_type': {
	\   'syntastic': 'error',
	\ }
	\ }
" Syntastic can call a post-check hook, let's update lightline there
" For more information: :help syntastic-loclist-callback
function! SyntasticCheckHook(errors)
  call lightline#update()
endfunction

function! LightlineReadonly()
	return &readonly ? '⭤' : ''
endfunction
function! LightlineFugitive()
	if exists('*fugitive#head')
		let branch = fugitive#head()
		return branch !=# '' ? '⭠ '.branch : ''
	endif
	return ''
endfunction

" Ale config
"let b:ale_linters = {'javascript': ['eslint'],'jsx': ['eslint'],'cpp':['ccls']}
"let g:ale_fixers = {
"		\ '*': ['remove_trailing_lines','trim_whitespace'],
"		\ 'javascript':['eslint','prettier'],
"		\ 'jsx':['eslint'],
"		\ 'rust':['rustfmt'],
"		\ 'html':['prettier'],
"		\ 'css':['prettier'],
"		\ 'cpp':['ccls']
"		\ }
"autocmd BufWrite *.js ALEFix 
"autocmd BufWrite *.rs ALEFix

" Nerd tree config
map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
" Highlight full file name instead of icon
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif
