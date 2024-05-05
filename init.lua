-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require 'vim-keymap'
require 'vim-options'

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

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
  { -- You can easily change to a different colorscheme.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },

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
  require 'plugins.other',

  -- require 'plugins.indent_line',
  -- require 'plugins.lint',
}
