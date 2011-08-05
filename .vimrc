" activate pathogen
call pathogen#runtime_append_all_bundles() 

" reset to vim-defaults
set nocompatible

" indent
filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2

" display settings
set background=dark     " enable for dark terminals
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
  set hlsearch       " highlight search (very useful!)
  set hl=l:Visual    " change highlight-color of hlsearch
  set incsearch      " search incremently (search while typing)
  color solarized
endif

"ComandT
map <C-S-n> :FuzzyFinderTextMate<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" ruby-files
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,config.ru} set ft=ruby

" custom mappings
map <C-s> :w<CR> 
