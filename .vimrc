" Load Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
autocmd! bufwritepost .vimrc source %

" Use :help <option> to see the docs
set bs=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a
set hidden
set wildmode=list:longest
set number
set title
set ruler
set nospell
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
set history=700
set undolevels=700
set nobackup
set nowritebackup
set noswapfile
set cursorline
set clipboard=unnamedplus
"highlight ColorColumn ctermbg=233

" Customize view
filetype plugin on
syntax on
set t_Co=256
colorscheme lucius
LuciusDark

" Key remaps
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F4> :BufExplorerHorizontalSplit<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" GRB: use fancy buffer closing that doesn't close the split
:nnoremap <silent> <S-Left> :bprevious<CR>
:nnoremap <silent> <S-Right> :bnext<CR>
:noremap <silent> <C-Left> b
:noremap <silent> <C-Right> w

" :w!! sudo saves the file
cmap w!! w !sudo tee % >/dev/null

" NERDTree options
let NERDTreeAutoCenter = 1
let NERDTreeCaseSensitiveSort = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMouseMode = 1
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$']
let NERDTreeIgnore+=['.*\.pyc\']
let NERDTreeIgnore+=['.*\.class$']
let g:NERDTreeChDirMode = 2

" Ctrl+P
let g:ctrlp_working_path_mode = 'rw'

" Bufexplorer options
let g:bufExplorerSplitBelow=1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '»'
let g:airline_exclude_preview = 1
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '»'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '«'
let g:airline_linecolumn_prefix = '␤ '
"let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
"let g:airline_paste_symbol = 'Þ'
"let g:airline_paste_symbol = '∥'

" Jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0

" Automatic commands
autocmd VimEnter *.c,*.cpp,*.h,*.java,*.py NERDTree
autocmd FileType c,cpp,h,java,python nested :TagbarOpen

" Autoload changes in .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

" Session autosave
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_autosave_periodic = 5
let g:session_default_to_last = 1
" let g:session_menu = 0
