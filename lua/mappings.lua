require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "fd", ":FlutterDevices<cr>", { desc = "Flutter Devices" })
map("n", "fe", ":FlutterEmulators<cr>", { desc = "Flutter Emulators" })
map("n", "fr", ":FlutterReload<cr>", { desc = "Flutter Reload" })
map("n", "fR", ":FlutterRestart<cr>", { desc = "Flutter Restart" })
map("n", "fq", ":FlutterQuit<cr>", { desc = "Flutter Quit" })
map("n", "fo", ":FlutterOutlineToggle<cr>", { desc = "Flutter Outline Toggle" })
map("n", "fgd", ":lua vim.lsp.buf.definition()<cr>", { desc = "Flutter go to definition" })
map("n", "fgr", ":lua vim.lsp.buf.rename()<cr>", { desc = "Flutter rename" })
map("n", "fgR", ":lua vim.lsp.buf.references()<cr>", { desc = "Flutter references" })

map("n", "<leader>O", ":! xdg-open .&<cr>", { desc = "Open in default file manager" })
map("n", "<leader>P", ":! open .&<cr>", { desc = "Open in default file manager" })
map("n", "<leader>ps", ":lua require('minty.shades').open()<cr>", { desc = "Open Shades Picker" })
map("n", "<leader>ph", ":lua require('minty.huefy').open()<cr>", { desc = "Open Color Picker" })
map("n", "<leader>w", ":close<cr>", { desc = "Close current window" })

-- toggleable
map({ "n", "t" }, "<D-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
