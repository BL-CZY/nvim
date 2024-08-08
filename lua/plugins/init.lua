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

  -- eslint thorws errors, so ill comment it here
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require('lint').linters_by_ft = {
        javascript = {'eslint'},
        typescript = {'eslint'},
      }

      -- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        -- callback = function ()
          -- require('lint').try_lint();
        -- end
      -- })
    end
  },

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
