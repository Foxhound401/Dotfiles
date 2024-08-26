require('neo-tree').setup {
  close_if_last_window = false,
  enable_git_status = true,
  enable_diagnostics = true,
  filesystem = {
    hijack_netrw_behavior = "open_default",
    window = {
      fuzzy_finder_mappings = {
        ["<C-j>"] = "move_cursor_down",
        ["<C-k>"] = "move_cursor_up",
      }
    }
  }
}
