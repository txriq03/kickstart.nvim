vim.pack.add { 'https://github.com/sindrets/diffview.nvim' }

local actions = require('diffview.actions')

require('diffview').setup {
  hooks = {
    view_opened = function()
      actions.toggle_files()
    end,
  },
}

vim.keymap.set('n', '<leader>do', '<cmd>DiffviewOpen<CR>', { desc = '[D]iffview [O]pen' })
vim.keymap.set('n', '<leader>dh', '<cmd>DiffviewFileHistory<CR>', { desc = '[D]iffview File [H]istory' })
vim.keymap.set('n', '<leader>dc', '<cmd>DiffviewClose<CR>', { desc = '[D]iffview [C]lose' })
vim.keymap.set('n', '<leader>ds', '<cmd>DiffviewToggleFiles<CR>', { desc = '[D]iffview [S]idebar' })

pcall(function()
  require('which-key').add({
    { '<leader>d', group = '[D]iffview', mode = { 'n' } },
  })
end)
