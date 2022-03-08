" set leader key
let g:mapleader = ","

syntax enable				" Enables syntax highlighing
set hidden 				" Required to keep multiple buffers open multiple buffers
set nowrap				" Display long lines as just one line
set encoding=utf-8			" The encoding displayed
set pumheight=10			" Makes popup menu smaller
set fileencoding=utf-8			" The encoding written to file
set ruler				" Show the cursor positoin all the time
set nobackup				" No backup
set noswapfile				" No anoying swapfile 
set cmdheight=2				" More space for displaying messages
set iskeyword+=-			" Treat dash separated words as a word text object
set mouse=a				" Enable your mouse
set splitbelow				" Horizontal splits will automatically be below
set splitright				" Vertical splits will automatically be right
set t_Co=256				" Support 256 colors
set conceallevel=0			" So that I can see `` in markdown files
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0
set number
set relativenumber
set hlsearch
set cursorline
set background=dark
set showtabline=2
set noshowmode
set nowritebackup
set updatetime=300
set timeoutlen=500
set formatoptions-=cro			" Stop newline continution of comments
set clipboard=unnamedplus		" Copy paste between vim and everything else
set shell=alacritty

au! BufWritePost $MYVIMRC source % "auto cource when writing to init.vim
