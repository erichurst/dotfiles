" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Menlo:h12             " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere
"set background=light              " Background.
set lines=82 columns=236          " Window dimensions.
set nowrap

set guioptions-=T                 " Hide toolbar.
set guioptions-=r                 " Don't show right scrollbar
set guioptions-=l                 " Don't show left scrollbar

set tabstop=2                    " Global tab width.

colorscheme tir_black
