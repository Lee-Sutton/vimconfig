require 'setup'
require 'keymaps'

vim.cmd 'let g:test#python#runner = "pytest"'
vim.cmd 'let g:test#javascript#runner = "vitest"'
vim.cmd 'set nowrap'

vim.cmd 'set foldmethod=expr'
vim.cmd 'set foldexpr=nvim_treesitter#foldexpr()'
require('claude-code').setup {
  window = {
    split_ratio = 0.5, -- Percentage of screen for the terminal window (height for horizontal, width for vertical splits)
    position = 'vertical', -- Position of the window: "botright", "topleft", "vertical", "rightbelow vsplit", etc.
    enter_insert = true, -- Whether to enter insert mode when opening Claude Code
    hide_numbers = true, -- Hide line numbers in the terminal window
    hide_signcolumn = true, -- Hide the sign column in the terminal window
  },
}

vim.cmd 'set foldlevelstart=99'
