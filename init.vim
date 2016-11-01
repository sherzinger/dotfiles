call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'pangloss/vim-javascript'

Plug 'ntpeters/vim-better-whitespace'
Plug 'ap/vim-css-color'

Plug 'zchee/deoplete-jedi'
Plug 'hynek/vim-python-pep8-indent'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'

Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
Plug 'alessandroyorba/despacio'
Plug 'romainl/Apprentice'
Plug 'iCyMind/NeoSolarized'
call plug#end()

filetype indent plugin on
syntax on

set background=light
colorscheme NeoSolarized

set ruler
set synmaxcol=200
set termguicolors
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
set noswapfile
set nobackup

let mapleader=" "
set notimeout
set nottimeout

"Disable preview window
set completeopt-=preview

nnoremap Y y$
nnoremap <silent> <c-l> :nohlsearch<cr><c-l>
nnoremap <CR> :
nnoremap <c-p> :FZF<cr>

augroup misc
    autocmd!
    autocmd BufWritePost init.vim source %
    autocmd BufWritePost * Neomake
    autocmd InsertEnter,InsertLeave * set cul! "highlight line in insert mode
    "Close the documentation window when completion is done
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END

"Let <Tab> shift through omnicompletion
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Hardcode python path for virtualenv support
"See https://github.com/neovim/neovim/issues/1887
let g:python3_host_prog = '/usr/local/bin/python3'

"Build statusline
set statusline=
set statusline+=\ %n\       "set buffer number
set statusline+=%f\         "set filename
set statusline+=%y%r%m\     "set readonly and modified flag
set statusline+=%=          "seperation between left and right aligned
set statusline+=(%l,%c)\    "set line and column number
set statusline+=%p%%/%L\    "set percentage of total lines in file

"##################################################
" FILE TYPE SPECIFIC SETTING
"##################################################

autocmd Filetype python setlocal colorcolumn=80

"##################################################
" PLUGIN SECTION
"##################################################

"Neomake
let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_python_enabled_markers = ['flake8']


"Deoplete
let g:deoplete#enable_at_startup = 1

"TernJS
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


"Ack
let g:ackprg = 'ag --vimgrep'


"fzf
set rtp+=/usr/local/bin/fzf

