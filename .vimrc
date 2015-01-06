set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent off

set hlsearch
set autoindent
set si " Smart Indent
set number

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

syntax on
set ruler
set showmatch
colorscheme desert
set background=dark
set cursorline
set nobackup

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" http://d.hatena.ne.jp/joker1007/20111018/1318950377
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3c3c3c ctermbg=darkgray
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

" 自動補完設定
let g:neocomplcache_enable_at_startup = 1

" matchit.vim 有効化
:source $VIMRUNTIME/macros/matchit.vim

nmap <silent> <leader>w :exec 'silent !google-chrome % &'


" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

" Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'JavaScript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Simple-Javascript-Indenter'
NeoBundle 'Indent-Guides'
NeoBundle 'YankRing.vim'
NeoBundle 'neocomplcache'
NeoBundle 'DirDiff.vim'
"NeoBundle 'unmswin.vim'
NeoBundle 'ZenCoding.vim'
NeoBundle 'quickrun.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'node.js'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

" Required:
filetype plugin indent on   
