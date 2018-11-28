set number
set nowrap
set laststatus=2
set autoindent 
set expandtab
set tabstop=4
set incsearch
set backspace=2
set noswapfile
set hlsearch
set ts=4
set sw=4


let g:rehash256 = 1
let g:molokai_original = 1

"======================"
"        FileHL        "
"======================"
filetype on 
filetype plugin on
syntax enable
syntax on
set term=ansi


"======================"
"        代码缩进      "
"======================"
"filetype indent on
"let g:html_indent_script1 = "inc"   
"let g:html_indent_style1 = "inc"  
"let g:html_indent_inctags = "html,body,head,tbody"
"set foldmethod=indent

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
"
" vim-go config 
" {
autocmd FileType go nmap <Leader>d  <Plug>(goimports)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
let g:go_fmt_command = "goimports"
let g:go_gocode_propose_builtins = 1
let g:go_gocode_propose_source = 1
" }

" rust config
" {
autocmd FileType rust nmap <leader>f :RustFmt<CR>
autocmd FileType rust nmap <leader>t :RustFmt<CR>
" }


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
" Plugin 'SirVer/ultisnips'
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
Plugin 'AndrewRadev/splitjoin.vim'
" }

" Rust Lang {
Plugin 'rust-lang/rust.vim'
" }

" CPP {
Plugin 'octol/vim-cpp-enhanced-highlight'
" }


" HTML {
"Plugin 'amirh/HTML-AutoCloseTag'
"Plugin 'hail2u/vim-css3-syntax'
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
"
" Toml {
" Plugin 'cespare/vim-toml'
" }
"
" Lint Engine {
Plugin 'w0rp/ale'
" }

call vundle#end()            
filetype plugin indent on
