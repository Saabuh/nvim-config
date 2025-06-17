-- [[ Configure and install plugins ]]
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  require 'kickstart.plugins.autopairs',

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/tokyonight',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart/plugins/nvim-tree',

  require 'kickstart/plugins/transparent',

  require 'kickstart/plugins/toggleterm',

  require 'kickstart/plugins/nightfox',

  -- require 'kickstart/plugins/kanagawa',

  -- require 'kickstart/plugins/gruvbox',

  require 'kickstart/plugins/rosepine',

  require 'kickstart/plugins/blackmetal',

  -- require 'kickstart/plugins/oxocarbon',
  --
  -- require 'kickstart/plugins/zenbones',

  require 'kickstart/plugins/render-markdown',

  -- require 'kickstart/plugins/markdown-preview',

  -- require 'kickstart/plugins/obsidian',

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',

  -- TODO:
  -- [x] get bracket completion plugin
  -- [x] file browser
  -- [x] toggle terminal
  -- [ ] setup debugger for cpp, python, js and use it as a lightweight debugger with Visual Studio open
  -- [ ] get buffer tabs plugin
  -- [x] check difference between space s / and space s g TLDR: space s / is grep cwd + open files
  -- [x] save settings to github
  -- [ ] lazygit integration
  -- [x] theme switcher, transparency as well
  -- [x] keybind for quicksaving, or setup autosave
  -- [x] setup keybinds for formatting and saving (nevermind, it formats on save)
  -- [x] fix go-to-reference/go-to-definition lag (fixed, issue was that some lsps(like pyright) don't start (but it did?) unless there is a file in the directory that signals the root of the of the project, the default in this case was a .git folder, which was not found. see https://github.com/neovim/nvim-lspconfig#example-override-some-defaults, the troubleshooting section explains this)

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
