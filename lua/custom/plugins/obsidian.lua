return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = 'personal',
        path = '~/Documents/Arcship',
      },
      {
        name = 'work',
        path = '~/Documents/Arcship/Work/Spring Health/',
      },
    },
    daily_notes = {
      enabled = true,
      folder = 'Daily',
      date_format = 'YYYY/MMM-DD-YYYY',
      template = 'Templates/{{date}}',
      default_tags = {},
    },
    attachments = {
      folder = 'Attachments',
    },
    templates = {
      folder = 'Templates/',
      date_format = 'MMM-DD-YYYY',
      time_format = 'H:mma',
      substitutions = {},
    },
    footer = {
      enabled = false,
    },
    frontmatter = {
      enabled = false,
    },
    sync = {
      enabled = true,
    },
  },
}
