" activate pathogen
call pathogen#runtime_append_all_bundles() 

" reset to vim-defaults
set nocompatible

" display settings
set background=dark     " enable for dark terminals
"set nowrap              " dont wrap lines
set scrolloff=2         " 2 lines above/below cursor when scrolling
set number              " show line numbers
set showmatch           " show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set wildmenu            " completion with menu

" editor settings
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set smartindent         " smart auto indenting
set smarttab            " smart tab handling for indenting
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set nobackup            " no backup~ files.

" colors & syntax
if &t_Co > 2 || has("gui_running")
  syntax on          " enable colors
  "set hlsearch       " highlight search (very useful!)
  set incsearch      " search incremently (search while typing)
  color solarized
endif

"ComandT
map <C-S-n> :CommandT<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" tune minibuf-expl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1

" ruby-files
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,config.ru} set ft=ruby
