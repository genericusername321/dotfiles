" vim-plug "
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/genericusername321/ctrlp.vim'   
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'

call plug#end()

set nocompatible                            " Turns off vi compatibility mode
syntax on                                   " Turn on syntax high-lighting
set shortmess+=I                            " Disable Vim startup message
set number                                  " Display line number
set laststatus=2                            " Always show status line   
set backspace=indent,eol,start              " More intuitive backspace behaviour
set hidden                                  " Enable hidden buffers. See :help hidden

" Make search using / case insensitive when all characters are lower case.
" Search will be case sensitive if there is at least one upper case character.
set ignorecase
set smartcase

set incsearch                               " Search starts while typing
set noerrorbells visualbell t_vb=           " Disable audio bell
set mouse+=a                                " Enable mouse support

set tabstop=4                               " number of visual spaces per tab
set softtabstop=4  
set shiftwidth=4
set expandtab                               " Expand tabs to spaces
set showmatch                               " Highlight matching [{()}]

filetype indent on                          " Automatically insert indent
set hlsearch

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set undofile

" NERDTree "
" Start NERDTree. If a file is specified, move the cursor to its window. "
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Syntastic "
let g:syntastic_python_checkers = ['pylint']

" Disables error keys for movement
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

