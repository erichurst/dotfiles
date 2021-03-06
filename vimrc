set nocompatible                  " Must come first because it changes other options.

let mapleader = ","		            " The comma shall be your <Leader>.


execute pathogen#infect()
Helptags
syntax enable
filetype plugin indent on         " Turn on file type detection.
"silent! call pathogen#runtime_append_all_bundles()


runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.  

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
nnoremap <leader>xh :noh<cr>      " removes highlights from file search

"set wrap                          " Turn on line wrapping.
set nowrap                        " Turn off line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Use pretty colors
" set colorcolumn=100              " Character limit
set background=light
let g:solarized_termcolors=16
colo solarized

"Split new windows below
set sb

" Ack mappings
nnoremap <Leader>a :Ack -ik

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" NERDtree shortcuts
map <Leader>dt  :NERDTreeToggle<Enter>
map <Leader>dl  :NERDTreeFind<Enter>  

" Automatic fold settings for specific files. Uncomment to use.
autocmd FileType ruby setlocal foldmethod=indent
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd Syntax ruby,html,xhtml,haml,erb,css setlocal foldmethod=indent
autocmd Syntax ruby,html,xhtml,haml,erb,css normal zR

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" CtrlP mappings
let g:ctrlp_map = '<leader>f'

" SuperTab Settings
" let g:SuperTabNoCompleteAfter = ['^', ',', '\s']
