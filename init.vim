

" :call writefile(["foo"], "expand('~/nvim_bookmark.md')", "a")
au FileChangedShell * echo "Warning: File changed on disk"
"-------------------------------------------------------------------------------
" !!!!!!!!!!!!!!!!!!    CHANGE THIS FOR your COMPUTER !!!!!!  Python Path
let g:python3_host_prog = 'C:\Users\KaMeng\AppData\Local\Programs\Python\Python38-32\python.EXE'
"-------------------------------------------------------------------------------

" Plugin Section Start
"-------------------------------------------------------------------------------
call plug#begin()
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'





"-------------------------------------------------------------------------------
" Fuzzy Seach
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"-------------------------------------------------------------------------------
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CocInstall coc-tsserver coc-pyright coc-json coc-html coc-css



"-------------------------------------------------------------------------------
"GCC Comment line out
Plug 'tpope/vim-commentary' " Comment out line using gcc

"-------------------------------------------------------------------------------

Plug 'machakann/vim-highlightedyank'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

"-------------------------------------------------------------------------------
" Syntax Highlight
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'sheerun/vim-polyglot'
"-------------------------------------------------------------------------------
" Python Autopep8 Auto Format
Plug 'Chiel92/vim-autoformat'
Plug 'Vimjas/vim-python-pep8-indent'
"-------------------------------------------------------------------------------
" Python virtualenv
Plug '1orZero/vim-python-virtualenv'
"-------------------------------------------------------------------------------
" HTML/CSS/JAVASCRIPT Live Server
Plug 'turbio/bracey.vim'  " Use :Bracey to start
" -------------------------------------------------------------------------------
call plug#end()
"-------------------------------------------------------------------------------
" plugin section end


" basic config
"-------------------------------------------------------------------------------
" key mapping leader key
let g:mapleader = ','
nnoremap <leader>v :e $myvimrc<cr>
nnoremap <leader>sv :source $myvimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :nohl<cr>
nnoremap <leader>r leader>r :reg<cr>

" COC MAPPING
noremap <silent> <C-b> :CocCommand explorer<CR>
noremap <silent> <Leader>pv :CocCommand explorer --reveal<CR>
nnoremap <silent> <Leader>b :CocCommand explorer --sources=buffer+,file-<CR>
nnoremap <silent> <Leader>B :CocList bookmark<CR>
nnoremap <Leader>m :CocCommand bookmark.
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Open File Explorer
nnoremap <leader>x :!start .<cr>

set background=dark

if (has("termguicolors"))
    set termguicolors
endif


autocmd! bufwritepost $MYVIMRC source $MYVIMRC " Automatically source vimrc on save.

syntax enable
let python_highlight_all=1
filetype plugin indent on   " allows auto-indenting depending on file type

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set showtabline=2           " Always show tabs
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
" Width for autoindents set autoindent
" Indent a new line the same amount as the line just typed
set shiftwidth=4
set number                  " add line numbers
" Get bash-like tab completions
set autoread wildmode=longest,list,full
set cc=80                   " set an 80 column border for good coding style
set mouse=a                 " Mouse Enable
set ruler                   " Show the current position of the cursor
set cursorline              " Highline the current position of the cursor
set clipboard+=unnamed      " use the clipboards of vim and win
set splitbelow
set splitright              " Set Split to right by default

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" colorscheme dracula
" let g:airline_theme='dracula'
colorscheme vim-monokai-tasty
" let g:airline_theme='monokai_tasty'
let g:airline#extensions#whitespace#enabled = 0

runtime plugin_config.vim
" runtime defx.vim


"------------------------------------------------------------------------------- Mapping Leader Key
" Basic Config
