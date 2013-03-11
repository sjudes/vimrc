"-------------------------------------------------------------------------------
"	.vimrc
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"	Syntax Highlighting
"-------------------------------------------------------------------------------
filetype plugin on
syntax on
    
"-------------------------------------------------------------------------------
"	Indentation, Tabs stops
"-------------------------------------------------------------------------------
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set clipboard=unnamed
set autochdir

"-------------------------------------------------------------------------------
"	Menus
"-------------------------------------------------------------------------------
set wildmenu

"-------------------------------------------------------------------------------
"	Line numbering
"-------------------------------------------------------------------------------
set number

"-------------------------------------------------------------------------------
"	Key Mappings
"-------------------------------------------------------------------------------
" Avoid accidental :W instead of :w
cmap W w

" Insert new lines without leaving normal mode
nmap ,o o<C-c>k
nmap ,O O<C-c>j

" Easier move screen up/down
nmap <C-j> <C-e>
nmap <C-k> <C-y>

" Easier tabbing in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Switch tabs
map <F7> :tabp<CR>
map <F8> :tabn<CR>

"-------------------------------------------------------------------------------
"	Searching
"-------------------------------------------------------------------------------
set incsearch
set hlsearch

" Toggle highlighting current word
let g:wordHighlighted = 0
function! ToggleHighlight()
	if g:wordHighlighted == 0
		let @/ = escape('\<'.expand('<cword>').'\>', '.')
	endif
	if g:wordHighlighted == 1
		let @/ = ''
	endif
	let g:wordHighlighted = 1 - g:wordHighlighted
endfunction
map <silent> ; :call ToggleHighlight()<CR>

"-------------------------------------------------------------------------------
"	Status Line (now using Powerline plugin instead)
"-------------------------------------------------------------------------------
"set laststatus=2	" Always show the statusline
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%3*%y%*                "file type
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%{strftime('%c',getftime(expand('%')))}
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

