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
