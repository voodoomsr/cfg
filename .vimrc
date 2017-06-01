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

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
