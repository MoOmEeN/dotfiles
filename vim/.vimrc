call pathogen#infect() "enable pathogen
syntax enable 

" theme
let g:solarized_termtrans = 1 "use terminal background
set background=dark 
colorscheme solarized 

set number "line numbers
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
set clipboard=unnamedplus

" indentation
filetype indent on
set tabstop=4 "length of a tab is four spaces
set shiftwidth=4 "width of indent
set expandtab "expand tabs to spaces

" moving lines

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
