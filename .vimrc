set number
set nowrap
set laststatus=2
set autoindent 
set expandtab
set tabstop=2
set incsearch
set backspace=2
set noswapfile
set hlsearch
set ts=2
set sw=2


let g:rehash256 = 1
let g:molokai_original = 1

"======================"
"        FileHL        "
"======================"
filetype on 
filetype plugin on
syntax enable
syntax on


"======================"
"        代码缩进      "
"======================"
filetype indent on
let g:html_indent_script1 = "inc"   
let g:html_indent_style1 = "inc"  
let g:html_indent_inctags = "html,body,head,tbody"

"======================"
"        语法支持      "
"======================"
let g:js_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

"        KeyMap        "
"======================"
let mapleader=";"
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>Q :wq<CR>
nmap <leader>l <C-W>l
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>v :vs ./<CR>
"au VimEnter * map <tab> <esc>
"au VimEnter * imap <tab> <esc>
"au VimEnter * vmap <tab> <esc>



"======================"
" Vundle Configuration "
"======================"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"函数列表"
Plugin 'Tagbar' 
"文件浏览"
Plugin 'scrooloose/nerdtree'
"代码段"
Plugin 'SirVer/ultisnips'
"代码补全"
"Plugin 'Valloric/YouCompleteMe'
"状态栏"
Plugin 'Lokaltog/vim-powerline'
"缩进关联"
Plugin 'nathanaelkane/vim-indent-guides'
"git"
Plugin 'tpope/vim-fugitive'


" Go Lang {
Plugin 'fatih/vim-go'
" }
" CPP {
Plugin 'octol/vim-cpp-enhanced-highlight'
" }


" HTML {
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'
"Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'tpope/vim-haml'
"Plugin 'mattn/emmet-vim'
"Plugin 'jiangmiao/simple-javascript-indenter'
" }

" Javascript {
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'kchmck/vim-coffee-script'
Plugin 'marijnh/tern_for_vim'
Plugin 'mxw/vim-jsx'
Plugin 'darthmall/vim-vue'
Plugin 'vim-scripts/jade.vim'
" }

call vundle#end()            
filetype plugin indent on
