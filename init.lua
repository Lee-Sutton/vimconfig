-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- configure telescope projects
require("telescope").load_extension("project")

vim.wo.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldenable = false -- can be enabled directly in opened file - using 'zi' - toogle fold
