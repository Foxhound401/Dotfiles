if !exists('g:loaded_lspsaga') | finish | endif

lua <<EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  use_saga_diagnostic_sign = true,
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  diagnostic_header_icon = '   ',
  code_action_icon = ' ',
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  },
  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
  finder_action_keys = {
    open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
  },
  code_action_keys = {
    quit = 'q',exec = '<CR>'
  },
  rename_action_keys = {
    quit = '<C-c>',exec = '<CR>'  -- quit can be a table
  },
  definition_preview_icon = '  ',
  rename_prompt_prefix = '➤'
}
EOF

highlight link LspSagaFinderSelection Search

nnoremap <silent><C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><A-l> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><A-p> <Cmd>Lspsaga preview_definition<CR>

nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
" nnoremap <silent>gs <Cmd>Lspsaga signature_help<CR>
nnoremap <silent>gh <Cmd>Lspsaga lsp_finder<CR>

nnoremap <silent><leader>ca <Cmd>Lspsaga code_action<CR>
vnoremap <silent><leader>ca <Cmd>Lspsaga range_code_action<CR>

nnoremap <silent>gr <Cmd>Lspsaga rename<CR>
