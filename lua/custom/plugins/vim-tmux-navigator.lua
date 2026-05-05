return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
    'TmuxNavigatorProcessList',
  },
  keys = {
    { '<C-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', desc = 'Move left through Vim/tmux panes' },
    { '<C-j>', '<cmd><C-U>TmuxNavigateDown<cr>', desc = 'Move down through Vim/tmux panes' },
    { '<C-k>', '<cmd><C-U>TmuxNavigateUp<cr>', desc = 'Move up through Vim/tmux panes' },
    { '<C-l>', '<cmd><C-U>TmuxNavigateRight<cr>', desc = 'Move right through Vim/tmux panes' },
    { '<C-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', desc = 'Move to previous Vim/tmux pane' },
  },
}
