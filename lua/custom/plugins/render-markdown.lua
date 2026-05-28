---@module 'lazy'
---@type LazySpec
return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>tm', '<cmd>RenderMarkdown buf_toggle<CR>', desc = '[T]oggle [m]arkdown rendering' },
    },
    ---@type render.md.UserConfig
    opts = {
      completions = {
        blink = { enabled = true },
      },
    },
  },
}
