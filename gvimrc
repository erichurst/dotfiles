" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Source\ Code\ Pro\ Light:h12             " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere
set lines=82 columns=241          " Window dimensions.
set nowrap

set guioptions-=T                 " Hide toolbar.
set guioptions-=r                 " Don't show right scrollbar
set guioptions-=l                 " Don't show left scrollbar

set tabstop=2                    " Global tab width.

"set background=light              " Background.
set colorcolumn=100              " Character limit
colorscheme github
