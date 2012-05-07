set wildmenu
set number
filetype plugin on
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set clipboard=unnamed

map <F7> :tabp<CR>
map <F8> :tabn<CR>
set autochdir

" Toggle highlighting current word
set hlsearch
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
map ; :call ToggleHighlight()<CR>
