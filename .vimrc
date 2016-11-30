execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on                                                                                       
set tabstop=2                                                                                                   
set shiftwidth=2                                                                                                
set expandtab                                                                                                   
colorscheme molokai                                                                                             
set background=dark
syntax on
set number

" Syntactic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Start a nerdtree instance
autocmd vimenter * NERDTree

" Set vim-airline theme
let g:airline_theme='molokai'

" Get NERDTree to show hidden files
let NERDTreeShowHidden=1
