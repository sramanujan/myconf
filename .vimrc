set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set hidden
set wildmenu
set showcmd
set hlsearch
set expandtab
set ai
set ts=4
set sw=4
set ff=unix
set backspace=indent,eol,start
set ruler
set laststatus=2
set nostartofline
set visualbell
set confirm
set cmdheight=2
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set t_Co=256
set background=dark
set nu
colorscheme distinguished

if has("autocmd")
    augroup sramanujan_vim
        " When editing file, jump to last position
        autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif
    augroup END
endif

map <F6> :tabp<CR>
map <F7> :tabn<CR>
map <F8> :w<CR>
map <F9> :wq<CR>
map <F10> :q<CR>

syntax on
