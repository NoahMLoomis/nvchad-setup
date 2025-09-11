require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "Y", 'gg"+yG', { desc = "Copy the whole file to clipboard" })
map("n", "<leader>ct", "<cmd>Telescope lsp_code_action<cr>") -- normal mode
map("v", "<leader>ct", "<cmd>Telescope lsp_code_action<cr>") -- visual mode

map({ "n", "v" }, "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Actions" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
