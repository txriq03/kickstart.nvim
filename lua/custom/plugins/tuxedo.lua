vim.pack.add { 'https://github.com/IogaMaster/tuxedo.nvim' }

require('tuxedo').setup {
  create_todo_file = true,
  width_ratio = 0.95,
  height_ratio = 0.80,
}

vim.keymap.set('n', 'T', '<cmd>Tuxedo<cr>', { desc = 'Open Tuxedo' })

pcall(function()
  require('which-key').add({
    { 'T', desc = 'Open Tuxedo' },
  })
end)
