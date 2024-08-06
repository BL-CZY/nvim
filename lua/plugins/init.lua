return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
  },

  {
    "NvChad/nvterm",
    config = function ()
        require("nvterm").setup({
          terminals = {
            shell = vim.o.shell,
            list = {},
            type_opts = {
              float = {
                relative = 'editor',
                row = 0.8,
                col = 0.25,
                width = 0.9,
                height = 0.4,
                border = "single",
              },
              horizontal = { location = "rightbelow", split_ratio = .3, },
              vertical = { location = "rightbelow", split_ratio = .5 },
            }
          },
          behavior = {
            autoclose_on_quit = {
              enabled = false,
              confirm = true,
            },
            close_on_exit = true,
            auto_insert = true,
          },
        })
    end,
  }

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
