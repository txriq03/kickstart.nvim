vim.pack.add {
  'https://github.com/nickjvandyke/opencode.nvim',
}

vim.o.autoread = true

vim.g.opencode_opts = vim.g.opencode_opts or {}

local opencode = require 'opencode'

vim.keymap.set({ 'n', 'x' }, '<leader>oa', function()
  opencode.ask('@this: ', { submit = true })
end, { desc = 'OpenCode ask' })

vim.keymap.set('n', '<leader>os', function()
  opencode.select()
end, { desc = 'OpenCode select' })

vim.keymap.set('n', '<leader>op', function()
  opencode.prompt '@this '
end, { desc = 'OpenCode prompt this' })

vim.keymap.set({ 'n', 'x' }, '<leader>ov', function()
  return opencode.operator '@this '
end, { desc = 'OpenCode operator', expr = true })

vim.keymap.set('n', '<leader>oS', function()
  opencode.start()
end, { desc = 'OpenCode start server' })

pcall(function()
  require('which-key').add({
    { '<leader>o', group = 'Opencode', mode = { 'n', 'x' } },
  })
end)
