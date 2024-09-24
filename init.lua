-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.mkdp_browser = 'Safari'

vim.wo.relativenumber = true
-- disable netrw at the very start of your init.lua (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- python option - Neovim install website
vim.g.python3_host_prog = 'C:/Users/natha/Desktop/Code/python-projects/project-1/Scripts/python.exe'

vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { 'ExtraGroup' })

-- Fixes Telescope Prompt Colours
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.cmd 'highlight TelescopePromptBorder guifg=#27a1b9'
    vim.cmd 'highlight TelescopePromptTitle guifg=#27a1b9'
  end,
})

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
