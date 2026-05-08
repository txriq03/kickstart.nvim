vim.pack.add { 'https://github.com/catppuccin/nvim' }

require('catppuccin').setup {
  flavour = 'mocha',
  transparent_background = true,
  integrations = {
    gitsigns = true,
    neo_tree = true,
    telescope = true,
    which_key = true,
  },
}

vim.cmd.colorscheme 'catppuccin-mocha'

for _, group in ipairs {
  'Normal',
  'NormalFloat',
  'FloatBorder',
  'SignColumn',
  'EndOfBuffer',
} do
  vim.api.nvim_set_hl(0, group, { bg = 'none' })
end
