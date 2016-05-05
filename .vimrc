set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
call vundle#end()

filetype indent plugin on
syntax on
colorscheme solarized
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

let mapleader=","

nnoremap Y y$
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <silent> <CR> :noh<CR><CR>

inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O

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

"Disable status message of YCM
set shortmess+=c

"Setup for CtrlP
let g:ctrlp_by_filename=1

"Keybindings for tern_for_vim
nnoremap <Leader>tt :TernType<CR>
nnoremap <Leader>tr :TernRename<CR>
nnoremap <Leader>td :TernDef<CR>
nnoremap <Leader>tm :TernDoc<CR>
nnoremap <Leader>tf :TernRefs<CR>

