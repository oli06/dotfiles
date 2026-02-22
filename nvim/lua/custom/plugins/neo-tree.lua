-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { 'nt', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { 'nT', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          -- space being the leader key waits for a few ms for another key stroke before opening a directory in the Neotree window. Thus, it seems like a delay. Therefore we ignore the wait in Neotree window. (alternative is to use `w` instead)
          ['<space>'] = {
            'toggle_node',
            nowait = true, -- 👈 THIS removes the delay
          },
        },
      },
    },
  },
}
