call plug#begin('~/.vim/plugged')
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'janko-m/vim-test'
Plug 'wellle/targets.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme sublimemonokai
set background=dark
syntax on
set number
set encoding=utf-8

" set termguicolors

set cursorline

set ts=4 " number of spaces in a tab
set sw=4 " number of spaces for indent
set et   " expand tabs into spaces

set backspace=indent,eol,start " make backspace work like most other apps

" Show the cursor position at the end of the status line
set ruler

" Stores undo info in a file so that it persists after vim closes
" Need to have ~/.vim/undo created
set undofile
set undodir=~/.vim/undo

let mapleader=" "

highlight LineNr term=bold cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=white guibg=NONE
  highlight CursorLineNr term=bold ctermfg=11 gui=bold guifg=Yellow
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nmap <Leader>f :Files<CR>
