set nocompatible

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
