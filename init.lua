require 'setup'
require 'keymaps'

vim.cmd 'let g:test#python#runner = "pytest"'
vim.cmd 'let g:test#javascript#runner = "vitest"'
vim.cmd 'set nowrap'

vim.cmd 'set foldmethod=expr'
vim.cmd 'set foldexpr=nvim_treesitter#foldexpr()'
