"===== Style configurations
syntax on
set ruler
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
inoremap <C-d> <Del>

"===== Move through buffers like a pro
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

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



call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

map <C-n> :NERDTreeToggle<CR>

"====== Enable mouse support
set mouse=a
set tags=$HOME/.ctags
nmap t :tag
nmap - <C-]>

"======= Center Searches
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

"====== Relative numbers

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"======= copy paste to/from clipboard

vnoremap <A-y> "+y
nnoremap <A-Y> "+yg
nnoremap <A-y> "+y
nnoremap <A-yy> "+yy

nnoremap <A-p> "+p
nnoremap <A-P> "+P
vnoremap <A-p> "+p
vnoremap <A-P> "+P

" vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

" NERDTree config
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '^'

" Pale night
set background=dark
colorscheme palenight


