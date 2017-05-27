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
Plugin 'fholgado/minibufexpl.vim'
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
" js
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"
" Complete
Plugin 'valloric/youcompleteme'
" 
" Lint
"Plugin 'w0rp/ale'
"
" Others
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mileszs/ack.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'genutils'
"Plugin 'Marks-Browser'
"Plugin 'AndrewRadev/splitjoin.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

