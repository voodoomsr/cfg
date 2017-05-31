"===== Style configurations
syntax on
set ruler
colorscheme gotham256
set matchpairs+=<:>
set number
set tabstop=4

"===== Fix Caret
set cursorline
set guicursor+=n-v-c:blinkon1-ver20

"===== Added File name on status line
set laststatus=2
set statusline=%f

"===== Fixing broken backspace
set backspace=2
set backspace=indent,eol,start
fixdel
inoremap <C-d> <Del>

"===== Minimalistic tab usage, note: an specific language syntax file could override these settings, ie $HOME/.vim/syntax/C.vim
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

"===== Show command as it is entered
set showcmd 
