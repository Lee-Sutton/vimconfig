return {
  { "numToStr/FTerm.nvim" },
  { "tpope/vim-projectionist" },
  { "vim-test/vim-test" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-abolish" },
  { "tpope/vim-surround" },
  {
    "nvim-telescope/telescope-project.nvim",
    config = function()
      require("telescope").load_extension("project")
    end,
  },
  { "psliwka/vim-smoothie" },
  { "vimwiki/vimwiki" },
  { "gyim/vim-boxdraw" },
  {
    "imNel/monorepo.nvim",
    config = function()
      require("monorepo").setup({
        -- Your config here!
      })
    end,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
}
