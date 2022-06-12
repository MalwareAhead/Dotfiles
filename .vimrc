set nocompatible
filetype off
syntax enable

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set ic
set ai
set si
set nowrap
set noeol
set noshowmode
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed
set incsearch
set hlsearch
set splitbelow
set splitright
set laststatus=2
set mouse+=a
set backspace=indent,eol,start

set term=xterm-256color
set t_Co=256

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'

Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'

Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'

call plug#end()

filetype plugin indent on

colorscheme nord

let g:airline_powerline_fonts = 1

let g:NERDTreeShowHidden=1
nnoremap <C-t> :NERDTreeToggle<CR>

highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

let g:gitgutter_sign_add = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = '~'

let g:gitgutter_override_sign_column_highlight = 0

map <C-f> :Ack<space>
map <C-l> :ALEToggle<CR>

nnoremap <Space> i

nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

autocmd BufWritePre * :s/\s\+$//e
