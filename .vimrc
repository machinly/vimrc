set number
set nowrap
set hlsearch
set backspace=2
set laststatus=2
set expandtab
set tabstop=4
set noswapfile
set ts=4
set sw=4

let g:rehash256 = 1
let g:molokai_original = 1
set term=ansi
syntax on

"======================"
"        代码缩进      "
"======================"
set foldmethod=indent
set foldlevelstart=1

"======================"
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


"======================"
" Vundle Configuration "
"======================"
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 默认值
Plugin 'tpope/vim-sensible'

" 插件目录管理
Plugin 'tpope/vim-pathogen'

" 函数列表 {
Plugin 'Tagbar' 
nmap <leader>f :TagbarToggle<CR>
" }

" 自动补全 {
" Plugin 'zchee/deoplete-go'
" }

" 文件浏览"
Plugin 'scrooloose/nerdtree'

" 状态栏"
Plugin 'Lokaltog/vim-powerline'

" 语法检查 {
Plugin 'vim-syntastic/syntastic'
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>
" }

" 同文件多类型支持
Plugin 'tyru/caw.vim'

Plugin 'scrooloose/nerdcommenter'

" 代码段 {
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" }

" Full path fuzzy
Plugin 'ctrlpvim/ctrlp.vim'

" 缩进查看 <Leader> ig {
Plugin 'nathanaelkane/vim-indent-guides'
" }

" git"
Plugin 'tpope/vim-fugitive'

" Go Lang {
Plugin 'fatih/vim-go'

autocmd FileType go nmap <Leader>gi  <Plug>(go-imports)
autocmd FileType go nmap <leader>gr  <Plug>(go-run)
autocmd FileType go nmap <leader>gb  <Plug>(go-build)
autocmd FileType go nmap <leader>gt  <Plug>(go-test)
autocmd FileType go nmap <Leader>gc  <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>gl  <Plug>(go-lint)
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <C-c> :cclose<CR>

let g:go_fmt_command = "goimports"
let g:go_gocode_propose_builtins = 1
let g:go_gocode_propose_source = 1
let go_fold=0
" }

" Rust Lang {
Plugin 'rust-lang/rust.vim'
Plugin 'webapi.vim'
" }

" CPP {
Plugin 'octol/vim-cpp-enhanced-highlight'
" }

" JavaScript {
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2

let g:js_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let javaScript_fold=1
"

" Vue {
Plugin 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
autocmd FileType vue set tabstop=2
autocmd FileType vue set sw=2
autocmd FileType vue set ts=2
let vue_fold=1

" }

" HTML {
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'
autocmd FileType html set tabstop=2
autocmd FileType html set sw=2
autocmd FileType html set ts=2
let html_fold=1
let css_fold=1
" }


call vundle#end()            
call pathogen#infect()
filetype plugin indent on
