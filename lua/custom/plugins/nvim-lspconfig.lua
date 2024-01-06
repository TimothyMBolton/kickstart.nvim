return {
  -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim', opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    'folke/neodev.nvim',
  },
  lazy = false,
  config = function()
    local lspconfig = require 'lspconfig'
    local mason = require 'mason'
    local fidget = require 'fidget'

    -- Automatically install LSPs to stdpath for neovim
    mason.setup()

    -- Useful status updates for LSP
    fidget.setup({})

    -- Additional lua configuration, makes nvim stuff amazing!
    require('neodev').setup()

    -- NOTE: This is a workaround for
  end
}
