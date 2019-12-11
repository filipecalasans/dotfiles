set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'valloric/YouCompleteMe'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
" All of your Plugins must be added before the following line
Plugin 'DoxygenToolkit.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Set line number
set number

" Backspace
set backspace=indent,eol,start

" Indentation
set smarttab                    " Better tabs
set smartindent                 " Inserts new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=4                   " Columns a tab counts for
set softtabstop=2               " Columns a tab inserts in insert mode
set shiftwidth=2                " Columns inserted with the reindent operations
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs

" Key sequence timeout
set ttimeout                    " Enable time out
set ttimeoutlen=100             " Set timeout time to 100 ms

" Spell checking
set spelllang=en_us             " English as default language
set spell                       " Enable by default

" youcompleteme
let g:ycm_extra_conf_globlist=['~/.vim/*']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1

set rtp+=~/.fzf/bin

:map <C-t> :Files<cr>
:map <C-p> :tabnext<cr>
:map <C-o> :tabprev<cr>


" color scheme - Plugin flazz/vim-colorscheme
colorscheme Monokai

