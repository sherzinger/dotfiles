set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'rking/ag.vim'
"Awesome colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'whatyouhide/vim-gotham'
call vundle#end()

filetype indent plugin on
syntax on

colorscheme gotham
set background=dark

set encoding=utf-8
set ruler
set colorcolumn=140
set relativenumber
set wildmenu
set showcmd
set hlsearch
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set laststatus=2
set autoread
set scrolloff=1
set guifont=Fira\ Mono
set noswapfile
set nobackup

let mapleader=" "
set notimeout
set nottimeout

nnoremap Y y$
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <silent> <c-l> :nohlsearch<cr><c-l>
nnoremap <CR> :

inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O

vnoremap <C-o> :normal<Space>

augroup misc
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePre * :%s/\s\+$//e
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

"Setup for CtrlP
let g:ctrlp_by_filename=1
nnoremap <leader>cc :CtrlPClearAllCaches<CR>

"Keybindings for YCM/Tern
nnoremap <Leader>yr :YcmCompleter RefactorRename<Space>
nnoremap <Leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>yf :YcmCompleter GoToReferences<CR>
nnoremap <Leader>yt :YcmCompleter GetType<CR>
nnoremap <Leader>ym :YcmCompleter GetDoc<CR>

"Disable status message of YCM
set shortmess+=c
"Disable Documentation popup of YCM
set completeopt-=preview

"Setup for Ag.vim
let g:ag_working_path_mode="r"

