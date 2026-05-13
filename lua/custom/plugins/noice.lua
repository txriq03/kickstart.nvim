-- Noice replaces the cmdline and popupmenu UI with a compact popup.

vim.pack.add {
  'https://github.com/folke/noice.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

require('noice').setup {
  cmdline = {
    enabled = true,
    view = 'cmdline_popup',
  },
  messages = {
    enabled = false,
  },
  popupmenu = {
    enabled = true,
    backend = 'nui',
  },
  presets = {
    command_palette = true,
    bottom_search = true,
  },
}
