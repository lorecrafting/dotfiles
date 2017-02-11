call plug#begin('~/.vim/plugged')

" Directory Tree
Plug 'scrooloose/nerdtree'

" Surrounds for brackets
Plug 'tpope/vim-surround'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Status and tabline
Plug 'bling/vim-airline'

" Syntax checking
Plug 'scrooloose/syntastic'

" color schemes
Plug 'flazz/vim-colorschemes'

" Git diff in gutter
Plug 'airblade/vim-gitgutter'

" base Javascript syntax highlighter
Plug 'pangloss/vim-javascript'

" jsx syntax highlighter
" Install:
" https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
Plug 'mxw/vim-jsx'


" Initialize plugin system
call plug#end()

" enable jsx syntax highlighter for .js files
let g:jsx_ext_required = 0

" syntastic settings
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"change color scheme
colorscheme OceanicNext

"""""""""""""""""""""""""""""
" => BASIC SETTINGS        
" """"""""""""""""""""""""""

" Show current line number
set number

" Show relative line numbers
" set relativenumber

" use mouse scroll
set mouse=a

" Highlight cursor current line
set cursorline

" Set to auto read when a file is changed from the outside
set autoread
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
" => TEXT, TAB, AND INDENT RELATED
" """"""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Number of spaces to use for indent and unindent
set shiftwidth=2
" Visible width of tabs
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Strip trailing spaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json

