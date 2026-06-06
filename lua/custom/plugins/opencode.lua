vim.pack.add {
  'https://github.com/nickjvandyke/opencode.nvim',
}

vim.o.autoread = true

vim.g.opencode_opts = vim.g.opencode_opts or {}

local opencode = require 'opencode'

vim.keymap.set({ 'n', 'x' }, '<leader>oa', function()
  opencode.ask '@this: '
end, { desc = 'OpenCode ask' })

vim.keymap.set('n', '<leader>os', function()
  opencode.select()
end, { desc = 'OpenCode select' })

vim.keymap.set('n', '<leader>op', function()
  opencode.prompt '@this '
end, { desc = 'OpenCode prompt this' })

vim.keymap.set({ 'n', 'x' }, '<leader>oe', function()
  opencode.prompt 'Explain @this and its context'
end, { desc = 'OpenCode explain this' })

vim.keymap.set({ 'n', 'x' }, '<leader>or', function()
  opencode.prompt 'Review @this for correctness and readability'
end, { desc = 'OpenCode review this' })

vim.keymap.set({ 'n', 'x' }, '<leader>od', function()
  opencode.prompt 'Add comments documenting @this'
end, { desc = 'OpenCode document this' })

vim.keymap.set({ 'n', 'x' }, '<leader>oi', function()
  opencode.prompt 'Implement @this'
end, { desc = 'OpenCode implement this' })

vim.keymap.set({ 'n', 'x' }, '<leader>ot', function()
  opencode.prompt 'Add tests for @this'
end, { desc = 'OpenCode test this' })

vim.keymap.set({ 'n', 'x' }, '<leader>of', function()
  opencode.prompt 'Fix @this'
end, { desc = 'OpenCode fix this' })

vim.keymap.set({ 'n', 'x' }, '<leader>oo', function()
  opencode.prompt 'Optimize @this for performance and readability'
end, { desc = 'OpenCode optimize this' })

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
