vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

return {
  'stevearc/oil.nvim',
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
    view_options = {
      show_hidden = true,
    }
  },
}
