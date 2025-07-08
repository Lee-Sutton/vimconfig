local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Leader>?', ":WhichKey ','<CR>")
map('n', '<CR>', 'za')
map('n', '<Leader>F', ':EslintFixAll<CR>')
map('n', '<Leader>p', ':FzfLua git_files<CR>')
map('n', '<Leader>;', ':q<CR>')
map('n', '<Leader>qq', ':qa<CR>')
map('n', '<Leader>A', ':AV<CR>')
map('n', '<Leader>?', ':Telescope grep_string<CR>')
map('n', '<Leader>L', ':LspRestart<CR>')
map('n', '<Leader>t', ':TestNearest<CR>')
map('n', '<Leader>T', ':TestFile<CR>')
map('n', '<Leader>dl', ':!djlint --reformat %<CR>')
map('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
map('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
map('i', 'jj', '<Esc>')
map('i', 'jk', '<Esc>')
map('i', 'kk', '<Esc>')
map('n', '<Leader>o', ':w<CR>')
map('n', '<Leader>fp', ":lua require'telescope'.extensions.project.project{}<CR>")
map('n', '<Leader>gg', ':Git<CR>')
map('n', '<Leader>ff', ':Telescope git_files<CR>')

map('n', '<Leader>ac', ':CodeCompanionChat<CR>')
map('n', '<Leader>ap', ':CodeCompanionActions<CR>')

map('n', '<Leader>ff', ':FzfLua git_files<CR>')

-- code diagnostics
map('n', '<Leader>cd', ':lua vim.diagnostic.open_float()<CR>')
map('n', '<Leader>ca', ':lua vim.lsp.buf.code_action()<CR>')

vim.keymap.set('n', '<leader>m', function()
  require('telescope').extensions.monorepo.monorepo()
end)
vim.keymap.set('n', '<leader>n', function()
  require('monorepo').prompt_project 'add'
  -- require("monorepo").toggle_project()
end)

vim.cmd 'nnoremap <leader>w <c-w>'
vim.cmd 'nmap <Leader>H <Plug>RestNvim'
