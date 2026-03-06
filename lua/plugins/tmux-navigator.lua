return {
  'alexghergh/nvim-tmux-navigation',
  event = 'VeryLazy',
  opts = {
    disable_when_zoomed = true,
  },
  keys = {
    { '<C-h>', function() require('nvim-tmux-navigation').NvimTmuxNavigateLeft() end, desc = 'Navigate Left' },
    { '<C-j>', function() require('nvim-tmux-navigation').NvimTmuxNavigateDown() end, desc = 'Navigate Down' },
    { '<C-k>', function() require('nvim-tmux-navigation').NvimTmuxNavigateUp() end, desc = 'Navigate Up' },
    { '<C-l>', function() require('nvim-tmux-navigation').NvimTmuxNavigateRight() end, desc = 'Navigate Right' },
  },
}
