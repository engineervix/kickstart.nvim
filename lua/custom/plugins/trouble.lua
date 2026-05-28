---@module 'lazy'
---@type LazySpec
return {
  {
    'folke/trouble.nvim',
    cmd = 'Trouble',
    keys = {
      { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Trouble: project diagnostics' },
      { '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Trouble: buffer diagnostics' },
      { '<leader>xs', '<cmd>Trouble symbols toggle focus=false<cr>', desc = 'Trouble: document symbols' },
      { '<leader>xl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', desc = 'Trouble: LSP references/definitions' },
      { '<leader>xL', '<cmd>Trouble loclist toggle<cr>', desc = 'Trouble: location list' },
      { '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', desc = 'Trouble: quickfix list' },
    },
    opts = {
      focus = true,
      auto_close = true,
    },
  },
}
