syntax on
filetype plugin on


set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set shiftwidth=4
set softtabstop=4

set number

set hlsearch
set incsearch
set smartcase

map   <S-tab>  :tabprevious<cr>:echo @%<cr>
map   <tab>    :tabnext<cr>:echo @%<cr>
imap  <S-tab>    <C-n>

map   <S-f2>   :echo expand('%:p')<cr>

" move with ctrl up or down
map   <C-up> <C-y>
map   <C-down> <C-e>

" Map f-keys
" f1
" f2  Display name of current file
" f3  Next Tab
" f4  Previous Tab
" f5  New Tab
" f6  Quit
" f7
" f8
" f9  Visual Style code folding
" f10 Highlight whitespace at end of lines
" f11 Reload the vimrc files
" f12 GIT - substiture 'pick' for 'squash'

map   <f2>  :echo @%<cr>
map   <F3>  :tabnext<cr>:echo @%<cr>
map   <F4>  :tabprevious<cr>:echo @%<cr>
imap  <F4>  :tabprevious<cr>i
map   <f5>  :tabnew .<cr>
imap  <F3>  :tabnext<cr>i
imap  <f5>  :tabnew .<cr>
map   <f6>  :q<cr>
map   <f9>  zfa}
map   <f10> /\s\+$/
map   <f11> :so $MYVIMRC<cr>
map   <f12> :s/pick/squash/ <CR>



"highlight trailing whitespace
highlight WHITE_ON_RED ctermfg=white ctermbg=red
match WHITE_ON_RED /\s\+$/

let &titlestring = $TITLE
if &term == "screen"
      set t_ts=^[k
      set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
        set title
endif

" Match angle brackets...
set matchpairs+=<:>

" Give mouse cursor
set mouse=a


" Use an efficient text completion
set iskeyword+=:

" spell checking
" Loads a file with common errors and correcitons
source ~/.vim/spelling.vim
