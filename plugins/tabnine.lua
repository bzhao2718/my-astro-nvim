return {
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    lazy = false,
    config = function()
      require("tabnine").setup({
        -- build = "./dl_binaries.sh"
        disable_auto_comment = true,
        -- accept_keymap = "<Enter>",
        accept_keymap = "<S-Enter>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil, -- absolute path to Tabnine log file
      })
    end,
  },

  -- {
  --   "tzachar/cmp-tabnine",
  --   lazy = false,
  --   build = "./install.sh",
  --   dependencies = "hrsh7th/nvim-cmp",
  --   
  --   config = function()
  --     -- require("cmp-tabnine").setup {
  --     require("cmp_tabnine.config").setup {
  --       max_lines = 1000,
  --       max_num_results = 20,
  --       sort = true,
  --       run_on_every_keystroke = true,
  --       snippet_placeholder = "..",
  --       ignored_file_types = {
  --         -- default is not to ignore
  --         -- uncomment to ignore in lua:
  --         -- lua = true
  --       },
  --       show_prediction_strength = false,
  --     }
  --   end,
  -- },
}
