"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Adapted from http://amix.dk/vim/vimrc.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Always show line numbers
set nu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight search matches
set hlsearch

" Incrementally search while typing
set incsearch

" Case-insensitive search except when contains a capital letter
set ignorecase
set smartcase

" Press Space to turn off highlighting and clear any message already displayed.
noremap <silent> <Space> :silent noh<Bar>echo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Highlight columns 81 and all beyond 101. These act as column width guides.
highlight ColorColumn guibg=#2d2d2d ctermbg=236
let &colorcolumn="81,".join(range(101,999),",")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set softtabstop=2

" Auto-indent Git commit messages
"   * 50 characters for the summary
"   * 72 characters for lines in the description
filetype indent plugin on
