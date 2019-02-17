"********************************************************************************
" Jonas Mods
"********************************************************************************
syntax on
filetype on
au BufNewFile,BufRead *.plm set filetype=lisp
imap jj <Esc>
set number
vmap <Tab> >gv
vmap <S-Tab> <gv

"set smarttab

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set noexpandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=8
"set tabstop=8 " krnl 

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
" 2015/Dec/8: Adding right marging
set colorcolumn=80

set laststatus=2
execute pathogen#infect()

" Only 80 chars
"set textwidth=80
"
" Jonas Sat Jan 21 11:37:05 CST 2017
map <F8> :TlistToggle<cr>

" Jonas Sat May 20 10:49:23 CDT 2017
" Functions
fun! ShowFuncName()
	let lnum = line(".")
	let col = col(".")
	echohl ModeMsg
	echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
	echohl None
	call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun

map f :call ShowFuncName() <CR>
set ignorecase

colorscheme pablo
