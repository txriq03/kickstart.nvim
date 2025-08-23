local opts = { noremap = true }

-- Cycle
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)

-- Re-order
vim.keymap.set('n', '<leader>bn', '<Cmd>BufferLineMoveNext<CR>', opts)
vim.keymap.set('n', '<leader>bb', '<Cmd>BufferLineMovePrev<CR>', opts)

-- Pick
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', opts)
