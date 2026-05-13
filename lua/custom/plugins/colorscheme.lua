---@module 'lazy'
---@type LazySpec
return {
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      -- vim.g.everforest_background = 'hard'
      vim.g.everforest_better_performance = true
      vim.g.everforest_transparent_background = 2
      vim.cmd.colorscheme 'everforest'
    end,
  },
  {
    'Shatur/neovim-ayu',
    lazy = true,
  },
  {
    'filipjanevski/0x96f.nvim',
    name = '0x96f',
    lazy = true,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
  },
}
