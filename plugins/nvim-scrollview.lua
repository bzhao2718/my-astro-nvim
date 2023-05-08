return {
  {
    "dstein64/nvim-scrollview",
    -- lazy = false,
    config = function ()
    require("scrollview").setup {
      excluded_filetypes = {"nerdtree"},
      current_only = true,
      winblend = 75,
      base = 'buffer',
      column = 80
    }
    end,
  },
}
