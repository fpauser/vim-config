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
set background=dark     " solized @ dark
set scrolloff=3         " 3 lines above/below cursor when scrolling
set number              " show line numbers
set showmatch           " show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set wildmenu            " completion with menu

" editor settings
set ignorecase          " case insensitive searching
set autoindent          " dito
set smarttab            " smart tab handling for indenting
set smartcase           " but become case sensitive if you type uppercase characters
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set nobackup            " no backup~ files.
set mouse=a             " use mouse to select stuff
set nowrap              " do not wrap long lines
set hidden              " when switching buffers: hide & preserve history

" nice statusbar
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}\] " filetype
set statusline+=\ \[%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=0x%-8B\                      " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" some specials
set listchars=tab:▸\ ,eol:¬ " Use custom symbols for tabstops and EOLs
set showbreak=…

" all swap files in single folder
set directory=~/.vim_swap//

" colors & syntax
if &t_Co > 2 || has("gui_running")
  syntax on          " enable colors
  set hlsearch       " highlight search (very useful!)
  set hl=l:Visual    " change highlight-color of hlsearch
  set incsearch      " search incremently (search while typing)
  color solarized
endif

" When switching buffers, preserve window view.
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if exists('b:winview') | call winrestview(b:winview) | endif
endif

"ComandT
map <C-n> :CommandT<CR>
map <C-b> :CommandTBuffer<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" toggle set list
nmap <F12> :set list!<CR>

" ruby-files
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,config.ru,Thorfile} set ft=ruby

" check js-files on save
au BufWritePost *.js :JSHint

" custom mappings
map <C-s> :w<CR> 
nnoremap <esc> :noh<return><esc>
