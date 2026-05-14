---@module 'lazy'
---@type LazySpec
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
      on_open = function()
        vim.cmd 'startinsert!'
      end,
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)

      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { desc = desc })
      end

      map('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', '[T]oggle terminal [f]loat')
      map('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', '[T]oggle terminal [h]orizontal')
      map('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', '[T]oggle terminal [v]ertical')

      local function set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      end

      vim.api.nvim_create_autocmd('TermOpen', {
        pattern = 'term://*toggleterm#*',
        callback = set_terminal_keymaps,
      })
    end,
  },
}
