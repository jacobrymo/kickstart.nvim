-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- Oil replaces netrw as the default file explorer
      default_file_explorer = true,
      -- Columns shown in the oil buffer
      columns = { 'icon' },
      -- Keymaps inside oil buffers (these are buffer-local)
      keymaps = {
        ['g?'] = { 'actions.show_help', mode = 'n' },
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
        ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
        ['<C-t>'] = { 'actions.select', opts = { tab = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = { 'actions.close', mode = 'n' },
        ['<C-l>'] = 'actions.refresh',
        ['-'] = { 'actions.parent', mode = 'n' },
        ['_'] = { 'actions.open_cwd', mode = 'n' },
        ['`'] = { 'actions.cd', mode = 'n' },
        ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gs'] = { 'actions.change_sort', mode = 'n' },
        ['gx'] = 'actions.open_external',
        ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      },
      -- Use default keymaps in addition to the ones defined above
      use_default_keymaps = true,
      view_options = {
        -- Show hidden files (dotfiles)
        show_hidden = true,
      },
    },
    -- Open oil with '-' from any buffer, matching the vim-vinegar convention
    keys = {
      { '-', '<cmd>Oil<cr>', desc = 'Open parent directory (Oil)' },
    },
    -- Lazy-load on the keymap and when opening a directory
    lazy = false,
  },
}
