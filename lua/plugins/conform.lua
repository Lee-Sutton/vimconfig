return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["htmldjango"] = { "djlint" },
      ["python"] = { "black" },
    },
  },
}
