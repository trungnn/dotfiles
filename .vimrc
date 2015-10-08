set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'altercation/vim-colors-solarized'

" CtrlP - fuzzy file search
Plugin 'ctrlpvim/ctrlp.vim'
" Ag plugin
Plugin 'rking/ag.vim'

" Auto close braces
Plugin 'Townk/vim-autoclose'

" Read man page with vim
Plugin 'jez/vim-superman'

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set laststatus=2

Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1

" NerdTree
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Bundle 'klen/python-mode'

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

" set cursor line
set cursorline

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" AG Setup
nnoremap <leader>a :Ag
let g:ag_working_path_mode="r"

" Remap ; to :
nnoremap ; :
" Remap 0 to ^ => 0 to go to the first non-blank character
map 0 ^

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>> gt
noremap <leader>< gT

" No more arrow keys for me
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" CtrlP
noremap <leader>z :CtrlP ~/src/<CR>
noremap <leader>fe :CtrlP ~/src/meshim-frontend/<CR>
noremap <leader>med :CtrlP ~/src/meshim-server/<CR>
noremap <leader>be :CtrlP ~/src/zopim-backend/<CR>
noremap <leader>s :CtrlP ~/src/zopim-scribe/<CR>

" Shorthand for resizing splits 
nnoremap <silent> <Leader>>> :vertical resize +20<CR>
nnoremap <silent> <Leader><< :vertical resize -20<CR>

set autoindent
set acd
set relativenumber

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map j gj
map k gk

set scrolloff=25 " Keep 25 lines below and above the cursor

" Don't redraw while executing macros (good performance config)
set lazyredraw

" fix wierd backspace problem with vim 7.4
set backspace=2

set list
set listchars=tab:▸\ ,eol:¬,trail:.,extends:#,nbsp:.
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set smarttab

" Set search case insensitive for lowercase,
"   case sensitive if contains uppercase
set ignorecase
set smartcase

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

" Set incremental search
set incsearch
" Set search highlight
set hlsearch
" Set clear highlighted search
nmap <silent> ,/ :nohlsearch<CR>

" Handle JXML
au BufNewFile,BufRead *.jxml set filetype=html
autocmd filetype html,xml set ts=2 sw=2

" Solarized Theme
let g:solarized_visibility="high"
let g:solarized_termtrans=1
let g:solarized_contrast="high"
set term=xterm-256color
set t_Co=256

syntax enable
set background=dark
colorscheme solarized

let &colorcolumn="80,".join(range(120,999),",")

" Code Folding config
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:30'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Python setting
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class noexpandtab shiftwidth=4 softtabstop=0 tabstop=4

" Trim trailing whitespaces
autocmd BufWritePre *.py normal m`:%s/\s\+$//e

" Open split more naturally
set splitbelow
set splitright
