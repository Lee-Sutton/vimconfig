return {
  { "numToStr/FTerm.nvim" },
  { "tpope/vim-projectionist" },
  { "vim-test/vim-test" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-abolish" },
  {
    "nvim-telescope/telescope-project.nvim",
    config = function()
      require("telescope").load_extension("project")
    end,
  },
}
