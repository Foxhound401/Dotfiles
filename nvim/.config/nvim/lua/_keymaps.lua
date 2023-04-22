local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- markdown
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.c_syntax_for_h = 1

-- IndentLine
vim.g.indentLine_concealcursor = ""
vim.g.indentLine_setColors = 0

-- 
vim.g.indentLine_char_list = { "|", "¦", "┆", "┊" }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal mode
-- Remove all trailing whitespace by pressing F5
-- keymap("n", "<F5>", ":let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>", opts)

-- format json with jq
keymap("n", "<leader>jq", ":%!jq .<CR>", opts)

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
keymap("n", "N", "Nzzzv", opts)

-- Telescope remap
-- check again if this is needed when settup telescope at its own file
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-s>", "<cmd>Telescope live_grep<CR>", opts)

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- move between buffers

keymap("n", "<leader>gb", "<cmd>BufferPick<CR>", opts)

-- SmartResize
keymap("n", "<leader>rs", "<cmd>SmartResizeMode<CR>", opts)
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)

-- Visual mode
keymap("v", "<C-c>", '"+y<CR>', opts)
-- Insert Mode
-- press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
