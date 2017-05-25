set nocompatible               " be iMproved
set shell=/bin/bash            " For fish shell
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins here:
Plugin 'tpope/vim-sensible'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'myusuf3/numbers.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
"
" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"
" Python
Plugin 'python-mode/python-mode'
"
" Go
Plugin 'fatih/vim-go'
"
" Complete
Plugin 'valloric/youcompleteme'
"
" Others
"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'Marks-Browser'
"Plugin 'genutils'
"Plugin 'Indent-Guides'
"Plugin 'genutils'
"Plugin 'AndrewRadev/splitjoin.vim'
"Plugin 'jiangmiao/auto-pairs.git'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'grep.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set encodings
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" set colorscheme
let t_Co=256
colorscheme lucius
LuciusBlackLowContrast

" <leader> key by default it's mapped to \
let mapleader = ","

" few options just make things better
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set noerrorbells
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nu
set undodir=~/.vim/undodir
set undofile
"set vb t_vb=
"set relativenumber

" split window shortcut
nnoremap <C-w>- <C-w>s<C-w>j
nnoremap <C-w>\| <C-w>v<C-w>l
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

" Emacs bind
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-w> <Esc>dbcl
inoremap <C-d> <Esc>s
inoremap <C-u> <Esc>d0cl
inoremap <C-k> <Esc>lC

"
" all tabs to expand to four spaces
set autoindent          "ai     cident smartindent
"set tabstop=4           "ts
"set shiftwidth=4        "sw     space for every indent
"set expandtab           "et     expend tab to space
"set softtabstop=4       "sts    backspace back num space
set nosmarttab          "sta

" code not fold default
set foldmethod=indent
set foldlevel=100
nnoremap <space> za

" auto language indent
autocmd FileType python,erlang,java,sh set ts=4 sw=4 et sts=4
autocmd FileType c,cpp set tabstop=8 shiftwidth=8 noexpandtab sts=8
autocmd FileType go set tabstop=4 shiftwidth=4 noexpandtab sts=4
autocmd FileType lua set tabstop=4 shiftwidth=4 noexpandtab sts=4
autocmd FileType html,javascript,yaml,css set tabstop=2 shiftwidth=2 expandtab sts=2
autocmd FileType php set tabstop=4 shiftwidth=4 noexpandtab sts=4
autocmd FileType text set ts=8 sts=8

" code template
autocmd BufNewFile *.py 0r ~/.vim/mode/mode.py
autocmd BufNewFile *.sh 0r ~/.vim/mode/mode.sh
autocmd BufNewFile *.php 0r ~/.vim/mode/mode.php

" autocmd filetype
autocmd BufRead,BufNewFile *.json set ft=javascript
autocmd BufRead,BufNewFile */etc/nginx/* set ft=nginx
autocmd BufRead,BufNewFile */etc/init.d/* set ft=sh
autocmd BufRead,BufNewFile *.conf setlocal ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.sls set ft=yaml

" force to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" searching and moving
set magic
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" display invisible characters
set listchars=tab:▸\ ,eol:¬
nnoremap <leader><tab> :set list<cr>

" shortcuts with Leader key
nnoremap <Leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <Leader>v V`]
nnoremap <Leader>w <C-w>v<C-w>l
nnoremap <Leader>q :q<CR>
nnoremap <Leader>md :w !Markdown.pl > %.html<CR><CR>

" BufExplorer
nnoremap <leader>b :BufExplorer<cr>

" nerdtree.vim
nnoremap <Leader>fl :NERDTreeToggle<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeWinSize = 35
let NERDTreeWinPos = "right"

" tagbar.vim
nnoremap <Leader>tl :TagbarToggle<CR>
nnoremap <Leader>tb :TagbarToggle<CR>
let tagbar_left = 1
let tagbar_width = 35
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" tabularize
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" python-mode
let g:pymode_options_max_line_length = 999
let g:pymode_rope = 0

" vim-go
let g:go_fmt_command = "goimports"

" youcompleteme
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
let g:ycm_key_list_select_completion = ['<c-n>', '<Enter>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

" ultisnip
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
