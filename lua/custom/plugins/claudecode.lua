---@module 'lazy'
---@type LazySpec
return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      notifier = { enabled = true },
      words = { enabled = true },
    },
  },
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    opts = {
      terminal_cmd = vim.fn.expand('~/.local/bin/claude'),
      git_repo_cwd = true,
      terminal = {
        provider = 'external',
        provider_opts = {
          external_terminal_cmd = function(cmd, env)
            local args = { 'kitty', '@', 'launch', '--location=vsplit', '--cwd=current' }
            for k, v in pairs(env or {}) do
              table.insert(args, '--env')
              table.insert(args, k .. '=' .. v)
            end
            for part in cmd:gmatch('%S+') do
              table.insert(args, part)
            end
            return args
          end,
        },
      },
      diff_opts = {
        layout = 'vertical',
        open_in_new_tab = true,
      },
    },
    keys = {
      { '<leader>a', group = 'AI/Claude' },
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send selection' },
      { '<leader>as', '<cmd>ClaudeCodeTreeAdd<cr>', ft = { 'neo-tree' }, desc = 'Add file' },
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
  },
}
