call pathogen#infect() "enable pathogen
syntax enable 

" theme
let g:solarized_termtrans = 1 "use terminal background
set background=dark 
colorscheme solarized 

set number "line numbers
set clipboard=unnamedplus
" mac
" set clipboard=unnamed
" vmap <C-x> :!pbcopy<CR>
" vmap <C-c> :w !pbcopy<CR><CR>

" indentation
filetype plugin indent on
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
" removing preview window in autocompletion
set completeopt-=preview
" toggle nerd tree
nmap <leader>d :NERDTreeToggle<CR>

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" switching buffers with alt+(w/e)
nnoremap <ESC>w :bprevious!<CR>
nnoremap <ESC>e :bnext!<CR>
" mac
" nnoremap ∑ :bprevious!<CR>
" nnoremap ę :bnext!<CR>

" status line always visible
:set laststatus=2

" autocmpletion
set completeopt=longest,menuone
" map Ctrl+Space to user defined completion + autoselect first element i from the list
inoremap <expr> <Nul> '<C-x><C-u><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" autoselect first element on next matching word completion
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" toggle tagbar
nmap <leader>o :TagbarToggle<CR>

" splits
set splitbelow
set splitright
