-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
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
    { '<leader>\\g', ':Neotree show git_status<CR>', desc = 'Neotree git status', silent = true },
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    buffers = {
      -- time the current file is changed while the tree is open.
      group_empty_dirs = true, -- when true, empty folders will be grouped together
      show_unloaded = true,
      window = {
        mappings = {
          ['bd'] = 'buffer_delete',
          ['<bs>'] = 'navigate_up',
          ['.'] = 'toggle_hidden',
          ['<Cr>'] = 'set_root',
        },
      },
    },
    --    git_status = {
    --      window = {
    --        position = 'float',
    --        mappings = {
    --          ['A'] = 'git_add_all',
    --          ['gu'] = 'git_unstage_file',
    --          ['ga'] = 'git_add_file',
    --          ['gr'] = 'git_revert_file',
    --          ['gc'] = 'git_commit',
    --          ['gp'] = 'git_push',
    --          ['gg'] = 'git_commit_and_push',
    --        },
    --      },
    --    },
  },
}
