"===== Style configurations
syntax on
set ruler
colorscheme gotham256
set matchpairs+=<:>
set number
set tabstop=4
"===== Style configurations

"===== Fix mouse behaviour
set mouse=a
"===== Fix mouse behaviour

"===== Fix Caret
set cursorline
set guicursor+=n-v-c:blinkon1-ver20
"===== Fix Caret

"===== Added File name on status line
set laststatus=2
set statusline=%f
"===== Added File name on status line

"===== Fixing broken backspace
set backspace=2
set backspace=indent,eol,start
fixdel
inoremap <C-d> <Del>
"===== Fixing broken backspace
