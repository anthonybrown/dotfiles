
syntax on
set nocompatible
set t_Co=256
set wrap
set linebreak
syntax on
set background=dark
let g:solarized_termcolors=256
set guifont=menlo:h16
filetype off
"color mango

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'idocunext/closetag.vim'
Bundle 'bling/vim-airline'
Bundle "mattn/emmet-vim"
Bundle 'Townk/vim-autoclose'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-jinja'
Bundle 'digitaltoad/vim-jade'
Bundle 'vim-stylus'




" vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
" " non-GitHub repos
 Bundle 'git://git.wincent.com/command-t.git'
" " Git repos on your local machine (i.e. when working on your own plugin)
 Bundle 'file:///Users/gmarik/path/to/plugin'


filetype plugin indent on     " required!"
filetype plugin on
"
" Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
