---@module 'lazy'
---@type LazySpec
return {
  'mikavilpas/yazi.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true },
  },
  keys = {
    { '<leader>-', '<cmd>Yazi<cr>',     mode = { 'n', 'v' }, desc = 'Yazi: open at current file' },
    { '<leader>.', '<cmd>Yazi cwd<cr>',                      desc = 'Yazi: open at cwd' },
  },
  ---@type YaziConfig | {}
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
