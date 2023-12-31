return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<M-/>]],
      direction = 'float',
      insert_mappings = true,
    }
  end,
}
