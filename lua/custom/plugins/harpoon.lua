---@module 'lazy'
---@type LazySpec
return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ma', function() require('harpoon.mark').add_file() end, desc = 'Harpoon: [a]dd file' },
      { '<leader>mm', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon: toggle [m]enu' },
      { '<leader>1', function() require('harpoon.ui').nav_file(1) end, desc = 'Harpoon: go to file 1' },
      { '<leader>2', function() require('harpoon.ui').nav_file(2) end, desc = 'Harpoon: go to file 2' },
      { '<leader>3', function() require('harpoon.ui').nav_file(3) end, desc = 'Harpoon: go to file 3' },
      { '<leader>4', function() require('harpoon.ui').nav_file(4) end, desc = 'Harpoon: go to file 4' },
    },
    opts = {
      global_settings = {
        save_on_toggle = true,
        save_on_change = true,
        mark_branch = true,
      },
    },
  },
}
