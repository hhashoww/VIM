" 2016/08/19  
" Allen Huang
" 
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
syntax on
set paste
set nu
set background=dark
set linebreak       " 分行不段字, 以單字為單位跳到下一行完整顯示

set hlsearch        " 設定高亮度顯示搜尋結果
set incsearch       " 在關鍵字還沒完全輸入完畢前就顯示結果

set backspace=2     " 在 insert 也可用 backspace
set tabstop=4       " tab 的字元數
set shiftwidth=4    " 設定縮排寬度 = 4 
set softtabstop=4   " 試著按兩下tab 再按 backspace 感受一下差異....
set expandtab       " 用 space 代替 tab

set confirm         " 操作過程有衝突時，以明確的文字來詢問
set history=100     " 保留 100 個使用過的指令
set cursorline      " 顯示目前的游標位置 (底線)

set statusline=%<%F\ %m%=\ %h%r\ %-19([%p%%][%L]\ %3l,%02c%03V%)\ %{&ff}%y
set laststatus=2    " 狀態行顯示在窗口底部倒數第二行

set autoindent
"set smartindent

"""""""""""""""""""""""""""
"  Vundle Configure begin "
"""""""""""""""""""""""""""
set nocompatible    " VIM 不使用和 VI 相容的模式, be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
"Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'
Plugin 'myhere/vim-nodejs-complete'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

"level 0 means text is shown normally = no concealing
let g:vim_json_syntax_conceal = 0

let g:nodejs_complete_config = {
  \  'js_compl_fn': 'javascriptcomplete#CompleteJS',
  \  'max_node_compl_len': 15
\}
"""""""""""""""""""""""""""
"  Vundle Configure end "
"""""""""""""""""""""""""""

"JavaScript code completion for Vim
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS

" Makefile not use exapndtab
autocmd FileType make set noexpandtab

" C indent 
autocmd FileType c,c++ set cindent
"set cindent        " or insted with each language's plugin 
