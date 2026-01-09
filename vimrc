" =============================================================================
" MODERNIZED WITH VIM-PLUG
" =============================================================================

set ai                  " auto indenting
set history=1000        " keep 1000 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype indent on      " use the file type plugins
set encoding=utf-8

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Remove trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set confirm
set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set scrolloff=8         " Start scrolling when we're 8 lines away from margins

let mapleader = "\<Space>"

" Tabs navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
imap jj <Esc>

" Quick insert newline
nnoremap <Leader>k i<CR><Esc>

" =============================================================================
" PLUGINS (vim-plug)
" =============================================================================
call plug#begin('~/.vim/plugged')

" Navigation & UI
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Coding
Plug 'dense-analysis/ale'          " Asynchronous Lint Engine (Replaces Syntastic)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'        " Easier commenting (gcc)
Plug 'jiangmiao/auto-pairs'        " Auto close parentheses
Plug 'sheerun/vim-polyglot'        " Better syntax support for everything

call plug#end()

set background=dark
colorscheme default " Change this if you install a colorscheme like solarized

" =============================================================================
" PLUGIN CONFIGURATION
" =============================================================================

" --- vim-airline ---
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='dark'

" --- NERDTree ---
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" --- CtrlP ---
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|node_modules|target|dist)$',
\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" --- ALE (Linting) ---
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 1
" You can enable specific fixers here, e.g.:
" let g:ale_fixers = {'javascript': ['prettier', 'eslint']}

" --- Fugitive ---
nnoremap gs :Gstatus<CR>
nnoremap gc :Gcommit<CR>

" =============================================================================
" CUSTOM MAPPINGS
" =============================================================================
" Shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>

" Window navigation (easier splits)
set splitbelow
set splitright
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Buffer navigation
nmap bk :bnext<CR>
nmap bj :bprevious<CR>
nmap bq :bd<CR>
nmap bl :ls<CR>

" Clear search highlight
nnoremap <silent> <Leader><Space> :nohlsearch<CR>