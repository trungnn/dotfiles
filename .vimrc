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

Plugin 'gregsexton/gitv'

Plugin 'airblade/vim-gitgutter'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin 'altercation/vim-colors-solarized'
" 

" CtrlP - fuzzy file search
Plugin 'ctrlpvim/ctrlp.vim'

" Ack plugin
Plugin 'mileszs/ack.vim'
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif

" Auto close braces
Plugin 'Townk/vim-autoclose'

" Read man page with vim
Plugin 'jez/vim-superman'

" Syntatic
Plugin 'scrooloose/syntastic'

" JS Code completion
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }

" VueJS syntax support
Plugin 'posva/vim-vue'

" Golang support
Plugin 'fatih/vim-go'

" Comment/Uncomment tool
Plugin 'scrooloose/nerdcommenter'

" Github colorscheme "
Plugin 'endel/vim-github-colorscheme'
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set laststatus=2

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

" NerdTree
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
map <F1> :ls<CR>:b<Space>

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

Plugin 'pangloss/vim-javascript'
Bundle 'klen/python-mode'
Plugin 'hdima/python-syntax'

Plugin 'editorconfig/editorconfig-vim'

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
let g:ag_working_path_mode="ra"

" Remap ; to :
nnoremap ; :
" Remap 0 to ^ => 0 to go to the first non-blank character
map 0 ^

" No more arrow keys for me
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

noremap <C-f> :Ack  %<LEFT><LEFT>
noremap <leader>* "zyiw :GrepOpen <C-R>z<CR>

" CtrlP
noremap <leader>z :CtrlP ~/zopim/<CR>
noremap <leader>fe :CtrlP ~/zopim/meshim-frontend/<CR>
noremap <leader>med :CtrlP ~/zopim/meshim-server/<CR>
noremap <leader>cat :CtrlP ~/zopim/meshim-server/<CR>

noremap <leader>md :CtrlP ~/zopim/mediator-chat-dashboard/<CR>
noremap <leader>mw :CtrlP ~/zopim/mediator-chat-widget/<CR>

noremap <leader>be :CtrlP ~/zopim/zopim-backend/<CR>
noremap <leader>s :CtrlP ~/zopim/zopim-scribe/<CR>
noremap <leader>lc :CtrlP ~/zopim/zopim-lc/<CR>
noremap <leader>w :CtrlP ~/zopim/zopim-web/<CR>
noremap <leader>u :CtrlP ~/zopim/zopim-utils/<CR>
noremap <leader>dn :CtrlP ~/zopim/datanode/<CR>

" Shorthand for resizing splits
nnoremap <silent> <Leader>>> :vertical resize +20<CR>
nnoremap <silent> <Leader><< :vertical resize -20<CR>

set autoindent
set acd
set number
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

" Set search case insensitive for lowercase,
"   case sensitive if contains uppercase
set ignorecase
set smartcase

set history=1000         " remember more commands and search history
set undolevels=1000      " use many levels of undo
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
" Search in Visual Mode
vnoremap // y/<C-R>"<CR>

" Solarized Theme
" let g:solarized_visibility="high"
" let g:solarized_termtrans=1
" let g:solarized_contrast="high"
set term=screen-256color
"set t_Co=256

syntax enable
set background=dark
"colorscheme solarized
"colorscheme monokai
"colorscheme github
"colorscheme summerfruit
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_standard_library' : 1
  \     },
  \     'javascript': {
  \       'highlight_standard_library': 1
  \     }
  \   }
  \ }
colorscheme PaperColor

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
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Trim trailing white spaces
autocmd BufWritePre *.py normal m`:%s/\s\+$//e

" Open split more naturally
set splitbelow
set splitright

" fix weird backspace problem with vim 7.4
set backspace=2

set hidden

set list
set listchars=tab:▸\ ,eol:¬,trail:.,extends:#,nbsp:.
"set listchars=trail:.,extends:#,nbsp:.
set noexpandtab
set copyindent
set preserveindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab

" Set Spelling check
set spell

set diffopt+=vertical

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 0
" let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 0
let g:pymode_syntax_all = 0
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_lint_ignore = 'E501,W191'

" Don't autofold code
let g:pymode_folding = 0

let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all = 1


" Python setting
autocmd BufRead *.py set filetype=python smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType python setlocal noexpandtab
" Handle JXML
autocmd BufNewFile,BufRead *.jxml set filetype=html
" Handle Javascript
" autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd filetype html,xml set ts=2 sw=2 sts=2 noexpandtab


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
