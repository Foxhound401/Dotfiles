local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- markdown
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.c_syntax_for_h = 1

-- startify
vim.cmd([[
let g:startify_bookmarks = [
  \ { 'z': '~/.zshrc' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ { 'p': '~/.config/nvim/plug.vim' },
  \ ]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

]])
vim.g.startify_fortune_use_unicode = 0
-- IndentLine
vim.g.indentLine_concealcursor = ""
vim.g.indentLine_setColors = 0
vim.g.indentLine_char_list = { "|", "¦", "┆", "┊" }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal mode
-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Buffer nagivation
keymap("n", "S-h", ":bprevious<CR>", opts)
keymap("n", "S-l", ":bnext<CR>", opts)

-- Resize with arrows
keymap("n", "<C-A-k>", ":resize -2<CR>", opts)
keymap("n", "<C-A-j>", ":resize +2<CR>", opts)
keymap("n", "<C-A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-A-l>", ":vertical resize +2<CR>", opts)

-- Quick saving
keymap("n", "<leader>w", ":w!<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Make yank behave like the rest
keymap("n", "Y", "y$", opts)

-- Paste from clipboard
keymap("n", "<A-v>", "+P<CR>", opts)

-- Turn off search highlight
keymap("n", "<leader><space>", ":nohlsearch<CR>", opts)

-- Keep things center when jump
keymap("n", "n", "nzzzv", opts)
keymap("n", "n", "Nzzzv", opts)

-- Access startify
keymap("n", "<C-s>", ":Startify<CR>", opts)

-- Telescope remap
-- check again if this is needed when settup telescope at its own file

-- Visual mode
keymap("v", "<C-c>", '"+y<CR>', opts)

-- Insert Mode
-- press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
