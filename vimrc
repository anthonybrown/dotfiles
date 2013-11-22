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
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.


" set guioptions=T is to show the menu bar in mvim

set guioptions-=T
set guioptions-=r
set go-=L

set showmode
set tabstop=2
set smarttab
set tags=tags
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set ignorecase
set smartcase
set visualbell
set noerrorbells
set timeout timeoutlen=200 ttimeoutlen=100
set autowrite
set mouse=a
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

augroup AutoWrite
    autocmd! BufLeave * :update
augroup END

set background=dark

let g:solarized_termtrans = 1
set wrap
set linebreak
colorscheme solarized

execute pathogen#infect()

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" jshint
" let g:JSHintHighlightErrorLine = 0

let jshint2_save = 1

"if has("gui_running")
"  colorscheme CodeFactoryv3
"endif
"
"if has("gui_running")
"  colorscheme kib_darktango
"endif

" changes my macvim colorscheme
if has("gui_running")
  colorscheme xoria256
endif

if has("gui_running")
  let g:indent_guides_guide_size = 1
  let g:indent_guides_enable_on_vim_startup = 1

  hi IndentGuidesOdd  ctermbg=black
  hi IndentGuidesEven ctermbg=darkgrey
endif

" changing the leader
let mapleader = ","
let g:mapleader = ","

" faster saves
nmap <leader>w :w!<cr>

" down mean down ..
nnoremap j gj
nnoremap k gk

" easy escaping to normal mode
imap jj <esc>

" auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" resize vsplit
nmap <C-v> :vertical resize +5<cr>

nmap <C-b> :NERDTreeToggle<cr>

nmap ,c :!open -a Google\ Chrome<cr>

" show (partail) command in the status line
set showcmd

" create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForwar<cr>

highlight Search cterm=underline

"swap files out of project root
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//

" Run PHPUnit tests
map <Leader>t :!phpunit %<cr>

" Easy motion
let g:EasyMotion_leader_key = '<Leader>'

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" removes search results
command! H let @/=""

" if you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Abbreviations
abbrev pft PHPUnit_Framework_TestCase

abbrev gm !php artisan generate:model
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration

" Auto remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

nmap ,todo :e todo.txt<cr>

" Laravel framework commons
nmap <Leader>lr :e app/routes.php<cr>
nmap<leader>lca :e app/config/app.php<cr>
nmap<leader>lcd :e app/config/database.php<cr>
nmap<leader>lc :e composer.json<cr>

" Concept - load underlying class for laravel
function! FacadeLookup()
    let facade = input('Facade Name: ')
    let classes = {
\        'Form': 'Html/FormBuilder.php',
\        'Html': 'Html/HtmlBuilder.php',
\        'File': 'Filesystem/Filesystem.php',
\        'Eloquent': 'Database/Eloquent/Model.php'
    }

    execute ":edit vendor/laravel/framework/src/Illuminate/" . classes[facade]
endfunction

nmap ,lf :call FacadeLookup()<cr>

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

au FocusLost * silent! wa

:au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

