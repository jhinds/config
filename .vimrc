set nocompatible              " be iMproved, required
set shell=/bin/bash
filetype off                  " required
" "filetype plugin indent on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" fish syntax
Plugin 'dag/vim-fish'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" tree navigation to easily find your files
Plugin 'scrooloose/nerdtree'

" git wrapper so you don't have to leave vim to use your git commands
Plugin 'tpope/vim-fugitive'

" plugin to help with python development
Plugin 'klen/python-mode'

" vim debugging tool for python (also supports php -ew!)
""Plugin 'jaredly/vim-debug'

" easy way to browse tags of the current file
Plugin 'majutsushi/tagbar'

" syntax checker
Plugin 'scrooloose/syntastic'

" python autocompletion
Plugin 'davidhalter/jedi-vim'

" run bundle commands from inside vim
Plugin 'tpope/vim-bundler'

" run ruby tests from vim
Plugin 'skalnik/vim-vroom'

" easy way to find files in vim
Plugin 'vim-scripts/FuzzyFinder'

" create closing brackets, quotes, etc.
Plugin 'vim-scripts/AutoClose'

" needed for FuzzyFinder
Plugin 'vim-scripts/L9'

" for rust"
Plugin 'rust-lang/rust.vim'

Plugin 'JamshedVesuna/vim-markdown-preview'

Plugin 'elixir-editors/vim-elixir'

call vundle#end()
filetype plugin indent on


map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

let g:pymode_rope = 0

set number
set ruler
set laststatus=2
syntax on
set hlsearch
set mouse=a
set confirm

