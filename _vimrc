"-------------------------------------------------------------------------------
"	.vimrc
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"	Syntax Highlighting
"-------------------------------------------------------------------------------
syntax on
    
"-------------------------------------------------------------------------------
"	Indentation, Tabs stops
"-------------------------------------------------------------------------------
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set clipboard^=unnamed
set autochdir
set scrolloff=7

"-------------------------------------------------------------------------------
"	Menus
"-------------------------------------------------------------------------------
set wildmenu

"-------------------------------------------------------------------------------
"	Line numbering
"-------------------------------------------------------------------------------
set number

"-------------------------------------------------------------------------------
"	Leader key
"-------------------------------------------------------------------------------
let mapleader=','

"-------------------------------------------------------------------------------
"	Key Mappings
"-------------------------------------------------------------------------------
" Avoid accidental :W instead of :w
cnoremap W w

" Insert new lines without leaving normal mode
nnoremap <leader>o o<C-c>k
nnoremap <leader>O O<C-c>j

" Easier move screen up/down
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" Easier tabbing in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Switch tabs
noremap <F7> :tabp<CR>
noremap <F8> :tabn<CR>

" Comment lines with separators
nnoremap <leader>s 0O#<esc>78a-<esc>ao<CR>#<tab>
nnoremap <leader>S 0O#<esc>78a-<esc>ao<CR>#<CR>#<esc>78a-<esc>ao<esc>ka<tab>
nnoremap <leader><C-S> 0O#<esc>78a-<esc>ao<CR>#<CR>#<CR>#<CR>#<esc>78a-<esc>ao<esc>kka<tab>

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
noremap <silent> ; :call ToggleHighlight()<CR>

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
"set STATUSLINE +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

