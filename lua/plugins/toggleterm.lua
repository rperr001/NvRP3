return {
  'akinsho/nvim-toggleterm.lua',
  keys = {
    { '<c-h>', desc = 'Terminal' },
  },
  config = function()
    require('toggleterm').setup {
      size = 20,
      hide_numbers = true,
      open_mapping = [[<c-h>]],
      shade_filetypes = {},
      shade_terminals = false,
      shading_factor = 0.1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = true,
      float_opts = {
        border = { '┏', '━', '┓', '┃', '┛', '━', '┗', '┃' },
      },
    }
  end,
}
