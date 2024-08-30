vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_window_blurred = true
end

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.wrap = false

vim.lsp.inlay_hint.enable(true)

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

vim.opt.termguicolors = true

vim.filetype.add {
  pattern = { [".*/hyprland%.conf"] = "hyprlang", [".*/hyprlock%.conf"] = "hyprlang" },
}

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  { import = "plugins" },
}, lazy_config)

require("nvim-highlight-colors").setup {
  render = "background",
}

require("todo-comments").setup {}

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
