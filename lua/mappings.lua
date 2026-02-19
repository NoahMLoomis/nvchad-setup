require "nvchad.mappings"

-- add yours here
--
local unmap = vim.keymap.del
local map = vim.keymap.set

unmap('n', "<leader>v")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "Y", 'gg"+yG', { desc = "Copy the whole file to clipboard" })

map({ "n", "v" }, "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Actions" })

map("n", "<leader>gb", ":Git blame<CR>")
