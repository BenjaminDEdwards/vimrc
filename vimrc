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

map   <f2>     :echo @%<cr>
map   <S-f2>   :echo expand('%:p')<cr>

" move with ctrl up or down
map   <C-up> <C-y>
map   <C-down> <C-e>


map   <F4>  :tabprevious<cr>:echo @%<cr>
map   <F3>  :tabnext<cr>:echo @%<cr>
map   <f5>  :tabnew .<cr>
imap  <F4>  :tabprevious<cr>i
imap  <F3>  :tabnext<cr>i
imap  <f5>  :tabnew .<cr>

map <f11> :so $MYVIMRC<cr>
map <f12> :s/pick/squash/ <CR>

map <f6> :q<cr>

"visual stype code folding
map <f9> zfa}

"highlight trailing whitespace
map <f10> /\s\+$/
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
