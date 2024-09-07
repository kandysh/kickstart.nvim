-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  require 'kickstart.plugins.neo-tree',
  {
    'vyfor/cord.nvim',
    build = '.\\build',
    event = 'VeryLazy',
    opts = {
      display = {
        show_repository = false, -- Display 'View repository' button linked to repository url, if any
        show_cursor_position = true, -- Display line and column number of cursor's position
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
    },
    config = true,
  },
}
