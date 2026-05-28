---@module 'lazy'
---@type LazySpec
return {
  {
    'MagicDuck/grug-far.nvim',
    cmd = { 'GrugFar', 'GrugFarWithin' },
    keys = {
      { '<leader>Sr', function() require('grug-far').open() end, desc = '[S]earch & [r]eplace' },
      { '<leader>Sr', function() require('grug-far').with_visual_selection() end, mode = 'v', desc = '[S]earch & [r]eplace selection' },
      { '<leader>Sw', function() require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } } end, desc = '[S]earch & replace [w]ord under cursor' },
      { '<leader>Sf', function() require('grug-far').open { prefills = { paths = vim.fn.expand '%' } } end, desc = '[S]earch & replace in current [f]ile' },
    },
    opts = {
      debounceMs = 300,
    },
  },
}
