" Fundamentals "{{{
" ---------------------------------------------------------------------

" Finding files - Search down into subfolders
set path+=**
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

" Ignore file
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" with-init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
set relativenumber
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set noswapfile
set showcmd
set hlsearch
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set updatetime=100
" set mouse=a

" let loaded_matchparen = 1
" set shell=st
set backupskip=/tmp/*,/private/tmp/*

" incremental substitution (neovim)
if has('nvim')
	set inccommand=split
endif

" Don't redraw while executing macros ( good performance config )
set lazyredraw
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab

" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

autocmd BufWinLeave *.* mkview

" load view in silent
function! LoadView() abort
  try
    loadview
  catch /E484/
    return
  endtry
endfunction
autocmd BufWinEnter *.* call LoadView()

" Leader is comma
let mapleader = ","

"}}}

" Hightlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
let &t_ut=''

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType go setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Linux Stuff
  if s:uname == "Linux\n"
    runtime ./arch.vim
  endif
endif

runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  "colorscheme NeoSolarized
  " colorscheme nord
  " colorscheme palenight
  colorscheme onehalfdark
  " let g:lightline = { 'colorscheme': 'onehalfdark' }
  " let g:lightline = {
  "       \ 'colorscheme': 'onehalfdark',
  "       \ 'component_function': {
  "         \   'filename': 'LightlineFilename',
  "       \ }
  "     \ }

  function! LightlineFilename()
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==# root
      return path[len(root)+1:]
    endif
    return expand('%')
  endfunction

endif

let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1
let g:smoothie_enabled=1


""""""""""" Smootth scroll

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc

" vim: set foldmethod=marker foldlevel=0:

" when create new sh file, auto add the header to it
au BufNewFile *.sh 0r $HOME/.config/nvim/sh_header.temp

"}}}


