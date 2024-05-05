-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

require 'configs.vim-api'
require 'configs.vim-keymaps'
require 'configs.vim-options'
require 'configs.install-lazy'

-- NOTE: Prerequisite
-- brew install make gcc ripgrep fd unzip git neovim
-- brew install gofumpt golines gopls golangci-lint
-- brew install pyright black isort
-- brew tap homebrew/cask-fonts && brew install --cask font-jetbrains-mono-nerd-font

-- [[ Configure and install plugins ]]
require('lazy').setup {
  require 'plugins.colorscheme',
  require 'plugins.starter',
  require 'plugins.lspconfig',
  require 'plugins.cmp',
  require 'plugins.conform',
  require 'plugins.treesitter',
  require 'plugins.neo-tree',
  require 'plugins.terminal',
  require 'plugins.toggleterm',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.autopairs',
  require 'plugins.debug',
  require 'plugins.tools',

  -- require 'plugins.indent_line',
  -- require 'plugins.lint',
}
