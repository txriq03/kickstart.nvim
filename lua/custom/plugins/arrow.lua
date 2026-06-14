vim.pack.add { 'https://github.com/otavioschwanck/arrow.nvim' }

require('arrow').setup {
  show_icons = true,
  leader_key = '<leader>a',
  buffer_leader_key = 'm',
}
