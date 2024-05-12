return {
  { 'elzr/vim-json', ft = 'json' },
  { 'saltstack/salt-vim', ft = 'sls,jinja2' },
  { 'carbon-language/vim-carbon-lang', ft = 'carbon' },
  { 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically

  { -- "gc" to comment visual regions/lines
    'numToStr/Comment.nvim',
    opts = {},
  },
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
      require('mini.trailspace').setup()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
    end,
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
    opts = {},
    keys = { { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'DiffView' } },
  },
  {
    'yanskun/gotests.nvim',
    ft = 'go',
    config = function()
      require('gotests').setup()
    end,
  },
}
