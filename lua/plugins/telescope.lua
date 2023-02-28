return {
  "nvim-telescope/telescope.nvim",
  opts = {
    extensions = {
      project = {
        base_dirs = {
          "~/projects/",
          "~/keela/",
        },
        hidden_files = true, -- default: false
        theme = "dropdown",
        order_by = "asc",
        sync_with_nvim_tree = true, -- default false
      },
    },
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      mappings = {
        i = {
          ["<c-t>"] = function(...)
            return require("trouble.providers.telescope").open_with_trouble(...)
          end,
          ["<a-i>"] = function()
            Util.telescope("find_files", { no_ignore = true })()
          end,
          ["<a-h>"] = function()
            Util.telescope("find_files", { hidden = true })()
          end,
          ["<C-j>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-k>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
        },
      },
    },
  },
}
