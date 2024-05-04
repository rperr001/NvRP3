-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: gitsigns is already included in init.lua but contains only the base
-- config. This will add also the recommended keymaps.

return {
  {
    'zbirenbaum/nvterm',
    config = function()
      require('nvterm').setup {
        terminals = {
          shell = vim.o.shell,
          list = {},
          type_opts = {
            float = {
              relative = 'editor',
              row = 0.3,
              col = 0.25,
              width = 0.5,
              height = 0.4,
              border = 'single',
            },
            horizontal = { location = 'rightbelow', split_ratio = 0.3 },
            vertical = { location = 'rightbelow', split_ratio = 0.5 },
          },
        },
        behavior = {
          autoclose_on_quit = {
            enabled = false,
            confirm = true,
          },
          close_on_exit = true,
          auto_insert = true,
        },
      }
      vim.keymap.set('n', '<leader>h', function()
        require('nvterm.terminal').new 'horizontal'
      end, { desc = 'horizontal terminal' })
      vim.keymap.set('n', '<leader>v', function()
        require('nvterm.terminal').new 'vertical'
      end, { desc = 'vertical terminal' })
    end,
  },
}
