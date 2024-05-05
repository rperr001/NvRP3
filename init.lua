-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require 'vim-api'
require 'vim-keymaps'
require 'vim-options'

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- NOTE: Prerequisite
-- brew install make gcc ripgrep fd unzip git neovim
-- brew install pyright black isort
-- brew install gofumpt golines gopls golangci-lint

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
