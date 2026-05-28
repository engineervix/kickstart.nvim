---@module 'lazy'
---@type LazySpec
return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it: open [d]iffview' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it: file [h]istory (current file)' },
      { '<leader>gH', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it: file [H]istory (branch)' },
      { '<leader>gx', '<cmd>DiffviewClose<CR>', desc = '[G]it: close diffview' },
    },
    opts = {
      enhanced_diff_hl = true,
      default_args = {
        DiffviewOpen = { '--imply-local' },
      },
      hooks = {
        diff_buf_read = function()
          vim.opt_local.wrap = false
          vim.opt_local.list = false
        end,
      },
    },
  },
}
