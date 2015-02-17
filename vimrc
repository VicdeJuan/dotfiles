set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype indent plugin on      " use the file type plugins

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
set ruler
set confirm
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set nobackup
set noswapfile
set rnu

let mapleader = "\<Space>"

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
imap jj <Esc>

nnoremap <Leader>k i<CR><Esc>

execute pathogen#infect()

syntax enable
set background=dark

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" fugitive
nnoremap gs :Gstatus<CR>
nnoremap gc :Gcommit<CR>

" Other shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>

" Window shortcuts
set splitbelow
set splitright
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap wj <c-w>j
nnoremap wk <c-w>k
nnoremap wh <c-w>h
nnoremap wl <c-w>l

nnoremap tt :ConqueTerm zsh<CR><CR><C-c>


" Buffer thingies.

" Move to the next buffer
nmap bk :bnext<CR>

" Move to the previous buffer
nmap bj :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap bq :Bd<CR>

" Show all open buffers and their status
nmap bl :ls<CR>

" Ctrl-P

" Setup some default ignOres
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Sidebar color fixed
hi clear SignColumn

" Conque supports
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_Color = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_EscKey = '<C-c>'

" ATP
let g:LatexBox_latexmk_async = 1
let g:LatexBox_latexmk_preview_continuously = 1
let g:syntastic_latex_chktex_args = "-I -H"

" Fugitive - GIt
nnoremap gs :Gstatus<CR>

nnoremap <Leader>j :make
nnoremap ga :! git add -A <CR><CR>:Gcommit<CR>

" Title for windows
set title
