if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" do completion for (), [],... 
Plug 'cohama/lexima.vim'


if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kyazdani42/nvim-web-devicons'


  " Smooth scroll
  Plug 'psliwka/vim-smoothie'

  " Telescope

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'jose-elias-alvarez/null-ls.nvim'

  " treesitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/nvim-treesitter-refactor'


  " Intellisense
  Plug 'neovim/nvim-lspconfig'
  " Plug 'glepnir/lspsaga.nvim'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'stevearc/dressing.nvim'

  Plug 'iamcco/markdown-preview.nvim'

  " Session
  Plug 'Shatur/neovim-session-manager'

  " autocomplete
  Plug 'hrsh7th/nvim-cmp'

  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'

  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lua'
  Plug 'saadparwaiz1/cmp_luasnip'


  Plug 'morhetz/gruvbox'

  Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'}

  " Theme and utilities
  Plug 'ap/vim-css-color'

  Plug 'arcticicestudio/nord-vim'
  Plug 'drewtempelmeyer/palenight.vim'

  " Plug 'Yggdroot/indentLine'
  Plug 'lukas-reineke/indent-blankline.nvim'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'mileszs/ack.vim'

  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter'

  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  " Plug 'ctrlpvim/ctrlp.vim'

  " Vim homepage
  Plug 'mhinz/vim-startify'


  " Code formater
  " Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  " Plug 'habamax/vim-godot'

  Plug 'itchyny/vim-gitbranch'

  " Postman alternative
  Plug 'diepm/vim-rest-console'


  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()


" let g:ctrlp_max_height = 20
" let g:ctrlp_custom_ignore = 'node_modules\|^\.git\|vendor'
" let g:ctrlp_show_hidden = 1

let g:rustfmt_autosave = 1

let g:indentLine_setColors=0

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:auto_save = 1 " enable Autosave on Vim startup

nnoremap \ :Ack<SPACE>
if executable('rg')
  let g:ackprg = 'rg -S --no-heading --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

command! -nargs=1 -complete=help H help <args> | silent only

" Nerdtree enable
nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeShowHidden=1

let g:startify_bookmarks = [
  \ { 'z': '~/.zshrc' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ { 'p': '~/.config/nvim/plug.vim' },
  \ ]

let g:startify_fortune_use_unicode = 0

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]



nmap <C-S> :Startify<cr>

set noshowmode

" let g:lightline = {
"       \ 'colorscheme': 'one',
"       \ }

" this is an attempt to let markdown show ``` ```
let g:indentLine_concealcursor = ""

" another attempt
" this tell vim-polyglot to not use conceal for markdown file and json too
" let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

let g:c_syntax_for_h = 1


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='wombat'
