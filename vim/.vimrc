call pathogen#infect() "enable pathogen
syntax enable 

" theme
let g:solarized_termtrans = 1 "use terminal background
set background=dark 
colorscheme solarized 

set number "line numbers
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
set clipboard=unnamedplus

