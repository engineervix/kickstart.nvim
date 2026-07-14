---@module 'lazy'
---@type LazySpec
return {
  {
    'stevearc/aerial.nvim',
    cmd = { 'AerialToggle', 'AerialOpen', 'AerialNavToggle' },
    keys = {
      { '<leader>c', group = '[C]ode' },
      { '<leader>cs', '<cmd>AerialToggle<cr>', desc = 'Aerial: toggle symbols outline' },
    },
    opts = {
      backends = { 'lsp', 'treesitter', 'markdown', 'man' },
      attach_mode = 'global',
      show_guides = true,
      layout = {
        min_width = 30,
      },
    },
  },
}
