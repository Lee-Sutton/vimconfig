require 'setup'
require 'keymaps'
require('codecompanion').setup {
  opts = {
    log_level = 'DEBUG', -- or "TRACE"
  },
}

vim.cmd 'let g:test#python#runner = "pytest"'
vim.cmd 'let g:test#javascript#runner = "vitest"'
