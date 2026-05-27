---@module 'lazy'
---@type LazySpec
return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-python',
      'nvim-neotest/neotest-go',
    },
    keys = {
      { '<leader>nn', function() require('neotest').run.run() end, desc = '[N]eotest: run [n]earest' },
      { '<leader>nf', function() require('neotest').run.run(vim.fn.expand '%') end, desc = '[N]eotest: run [f]ile' },
      { '<leader>na', function() require('neotest').run.run(vim.uv.cwd()) end, desc = '[N]eotest: run [a]ll' },
      { '<leader>nl', function() require('neotest').run.run_last() end, desc = '[N]eotest: run [l]ast' },
      { '<leader>ns', function() require('neotest').summary.toggle() end, desc = '[N]eotest: toggle [s]ummary' },
      { '<leader>no', function() require('neotest').output.open { enter = true } end, desc = '[N]eotest: open [o]utput' },
      { '<leader>nO', function() require('neotest').output_panel.toggle() end, desc = '[N]eotest: toggle [O]utput panel' },
      { '<leader>nw', function() require('neotest').watch.toggle(vim.fn.expand '%') end, desc = '[N]eotest: toggle [w]atch' },
      { '<leader>nj', function() require('neotest').jump.next { status = 'failed' } end, desc = '[N]eotest: jump to next failure' },
      { '<leader>nk', function() require('neotest').jump.prev { status = 'failed' } end, desc = '[N]eotest: jump to prev failure' },
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require('neotest-python') {
            dap = { justMyCode = false },
            runner = 'pytest',
          },
          require('neotest-go') {
            experimental = {
              test_table = true,
            },
          },
        },
        output = {
          open_on_run = 'short',
        },
        status = {
          virtual_text = true,
          signs = true,
        },
        icons = {
          running_animated = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
        },
      }
    end,
  },
}
