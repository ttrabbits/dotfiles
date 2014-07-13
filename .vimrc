set nocompatible

" key mapping
nmap <C-u> :Unite file_mru<CR>
vmap <C-c> :w !xsel -ib<CR><CR>
nmap <ESC><ESC> :nohlsearch<CR><ESC>

" tab and indent
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4 " 連続した空白に対してTabやDeleteでカーソルが動く幅

" appearance
set number
set showmatch " 対応する括弧を強調
set cursorline " カーソル行の背景色
set list " 不可視文字の表示
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ " 不可視文字の指定
set scrolloff=4 " 上下4行を常に表示
set sidescrolloff=8 " 左右8文字を常に表示
set laststatus=2

" usability
set mouse=a
set ttymouse=xterm2
set clipboard=unnamed,autoselect
set backspace=start,eol,indent
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭や行末でも連続的に移動
set foldlevel=10

" search
set incsearch " インクリメンタルサーチ
set smartcase " 検索時に「大文字を含んでいたら」大/小を区別
set nowrapscan " 検索をファイルの先頭へループしない
set ignorecase " 大文字と小文字を区別しない
set hlsearch " 検索文字列のハイライト

" file
set noswapfile " スワップファイルを作成しない
set hidden
set autoread
set nobackup
set confirm

" other settings
set visualbell t_vb= " ビープ音を無効にする
set noerrorbells " エラーメッセージの表示時にビープを鳴らさない

" encoding
set encoding=utf-8
scriptencoding cp932
set fileencodings=euc-jp,utf-8
filetype off

" plugin
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'joonty/vdebug'
NeoBundle 'joonty/vim-xdebug'
"NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'

" theme
colorscheme molokai
set t_Co=256
syntax on

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

