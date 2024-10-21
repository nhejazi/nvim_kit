return {

  {
    "R-nvim/R.nvim",
    config = function ()
      -- Create a table with the options to be passed to setup()
      local opts = {
          hook = {
              on_filetype = function()
                  vim.api.nvim_buf_set_keymap(0, "n", "<Enter>",
                    "<Plug>RDSendLine", {})
                  vim.api.nvim_buf_set_keymap(0, "v", "<Enter>",
                    "<Plug>RSendSelection", {})
              end
          },
          R_args = {"--quiet", "--no-save"},
          min_editor_width = 72,
          rconsole_width = 78,
          disable_cmds = {
                  "RClearConsole",
                  "RCustomStart",
                  "RSPlot",
                  "RSaveClose",
              },
        }
      end,
    lazy = false
  },

  {
    "R-nvim/cmp-r",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("cmp").setup({ sources = {{ name = "cmp_r" }}})
      require("cmp_r").setup({ })
    end,
  },

}
