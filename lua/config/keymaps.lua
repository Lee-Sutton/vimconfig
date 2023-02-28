-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Leader>?", ":WhichKey ','<CR>")
map("n", "<Leader>F", ":EslintFixAll<CR>")
map("n", "<Leader>o", ":w<CR>")
map("n", "<Leader>;", ":q<CR>")
map("n", "<Leader>a", ":AV<CR>")
map("n", "<Leader>?", ":Telescope grep_string<CR>")
map("n", "<Leader>L", ":LspRestart<CR>")
map("n", "<Leader>t", ":TestNearest<CR>")
map("n", "<Leader>T", ":TestFile<CR>")
map("n", "<Leader>d", ":DogeGenerate<CR>")
map("n", "<C-t>", '<CMD>lua require("FTerm").toggle()<CR>')
map("t", "<C-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
map("i", "jj", "<Esc>")
map("i", "jk", "<Esc>")
map("i", "kk", "<Esc>")
map("n", "<Leader>o", ":Telescope buffers<CR>")
map("n", "<Leader>fp", ":lua require'telescope'.extensions.project.project{}<CR>")
