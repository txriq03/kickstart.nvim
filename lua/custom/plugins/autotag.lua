-- Automatically close and rename HTML/XML tags based on Treesitter nodes
-- https://github.com/windwp/nvim-ts-autotag

vim.pack.add { 'https://github.com/windwp/nvim-ts-autotag' }
require('nvim-ts-autotag').setup {}
