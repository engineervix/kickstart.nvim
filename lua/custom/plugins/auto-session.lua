---@module 'lazy'
---@type LazySpec
return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      { '<leader>ws', '<cmd>AutoSession save<CR>', desc = '[W]orkspace: [s]ave session' },
      { '<leader>wr', '<cmd>AutoSession search<CR>', desc = '[W]orkspace: [r]estore / search sessions' },
      { '<leader>wd', '<cmd>AutoSession deletePicker<CR>', desc = '[W]orkspace: [d]elete session' },
    },
    config = function()
      vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

      require('auto-session').setup {
        suppressed_dirs = { '~/', '~/Downloads', '/tmp', '/' },
        git_use_branch_name = true,
        show_auto_restore_notif = true,
        pre_save_cmds = {
          function() pcall(vim.cmd, 'Neotree close') end,
        },
      }
    end,
  },
}
