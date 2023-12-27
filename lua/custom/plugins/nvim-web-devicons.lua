return {'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').setup()
    require('nvim-web-devicons').get_icons()
  end
}
