-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  config = function()
    local config = require 'nvim-treesitter.configs'
    config.setup {
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'css',
        'dockerfile',
        'go',
        'gomod',
        'graphql',
        'html',
        'javascript',
        'json',
        'lua',
        'python',
        'ruby',
        'rust',
        'scss',
        'tsx',
        'typescript',
        'yaml',
      },
    }
  end,
}
