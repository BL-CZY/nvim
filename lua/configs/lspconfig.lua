-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = vim.lsp

-- EXAMPLE
local servers =
  { "html", "cssls", "rust_analyzer", "pyright", "clangd", "svelte", "ts_ls", "jsonls", "slint_lsp", "denols", "hls", "nixd", "lua_ls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
vim.lsp.enable(servers)

--
-- configuring single server, example: typescript
vim.lsp.config("rust_analyzer", {  
  capabilities = nvlsp.capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

vim.lsp.config("ts_ls",  {
  root_markers = "tsconfig.json"
})

vim.lsp.config("denols",  {
  root_markers = "deno.json",
  settings = {
    deno = {
      inlayHints = {
        parameterNames = { enabled = "all", suppressWhenArgumentMatchesName = true },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true, suppressWhenTypeMatchesName = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enable = true },
        enumMemberValues = { enabled = true },
      },
    },
  },
})

vim.lsp.config("clangd", {
  settings = {
    clangd = {
      InlayHints = {
        Designators = true,
        Enabled = true,
        ParameterNames = true,
        DeducedTypes = true,
      },
      fallbackFlags = { "-std=c++20" },
    },
  },
})
