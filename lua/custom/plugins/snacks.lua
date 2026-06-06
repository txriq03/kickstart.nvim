vim.pack.add { 'https://github.com/folke/snacks.nvim' }

local Snacks = require 'snacks'

Snacks.setup {
  bigfile = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  lazygit = { enabled = true },
  image = { enabled = true },
  notifier = {
    enabled = true,
    timeout = 3000,
  },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  picker = {
    actions = {
      opencode_send = function(picker)
        return require('opencode').snacks_picker_send(picker)
      end,
    },
    win = {
      input = {
        keys = {
          ['<a-o>'] = { 'opencode_send', mode = { 'n', 'i' } },
        },
      },
    },
  },
  dashboard = {
    enabled = true,
    sections = {
      { section = 'header' },
      { section = 'keys', gap = 1, padding = 1 },
      { section = 'recent_files', gap = 1, padding = 1 },
    },
  },
}

vim.keymap.set('n', '<leader>lg', function()
  Snacks.lazygit()
end, { desc = 'LazyGit' })
