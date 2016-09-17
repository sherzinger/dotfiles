call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
"Awesome colorschemes
Plug 'endel/vim-github-colorscheme'
Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
call plug#end()

filetype indent plugin on
syntax on

set background=dark
colorscheme gruvbox

set encoding=utf-8
set ruler
set colorcolumn=140
set synmaxcol=200
set number
set relativenumber
set wildmenu
set showcmd
set hlsearch
set incsearch
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartcase
set laststatus=2
set autoread
set clipboard=unnamed
set scrolloff=1
set nowrap
set guifont=Fira\ Mono:h11
set noswapfile
set nobackup

let mapleader=" "
set notimeout
set nottimeout

nnoremap Y y$
nnoremap n nzz
nnoremap N Nzz
nnoremap <silent> <c-l> :nohlsearch<cr><c-l>
nnoremap <CR> :
nnoremap <c-p> :FZF<cr>
vnoremap <C-o> :normal<Space>

augroup misc
    autocmd!
    autocmd BufWritePost init.vim source %
augroup END

"Build statusline
set statusline=
set statusline+=\ %n\       "set buffer number
set statusline+=%t\         "set filename
set statusline+=%y%r%m\     "set readonly and modified flag
set statusline+=%=          "seperation between left and right aligned
set statusline+=(%l,%c)\    "set line and column number
set statusline+=%p%%/%L\    "set percentage of total lines in file

"Setup for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html', 'css'] }

"Setup for deoplete
let g:deoplete#enable_at_startup = 1

"Setup for deoplete ternjs
let g:tern_request_timeout = 1

