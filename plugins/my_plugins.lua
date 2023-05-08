return {
    -- Example plugin to show the syntax
    {
        "folke/todo-comments.nvim",
        -- This is similar to Packer: requires = "nvim-lua/plenary.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            -- lazy load the plugin
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
        opts = {},
        -- Alternatively, you can use the opts for setup
        -- event User AstroFile is load after openning the file.
        -- event = "User AstroFile",
        -- command will load this plugin
        cmd = { "TodoQuickFix" },
        -- Also, config keys
        -- config keys will also load the plugin
        keys = {
            { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
        },
    },

    -- -- wilder auto complete commands
    -- {
    --     "gelguy/wilder.nvim",
    --     lazy = false,
    --     config = function()
    --         local wilder = require "wilder"
    --         wilder.setup { modes = { ":", "/", "?" } }
    --
    --         wilder.set_option("pipeline", {
    --             wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
    --         })
    --
    --         wilder.set_option(
    --             "renderer",
    --             wilder.wildmenu_renderer {
    --                 highlighter = wilder.basic_highlighter(),
    --             }
    --         )
    --     end,
    -- },

    -- tabout
    -- Not working yet
    {
        "abecodes/tabout.nvim",
        event = "UIEnter",
        config = function()
            require("tabout").setup {
                -- tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
                -- backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
                tabkey = "<A-l>", -- key to trigger tabout, set to an empty string to disable
                backwards_tabkey = "<A-h>", -- key to trigger backwards tabout, set to an empty string to disable
                -- tabkey = "",
                -- backwards_tabkey = "",
                act_as_tab = true, -- shift content if tab out is not possible
                act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
                default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
                default_shift_tab = "<C-d>", -- reverse shift default action,
                enable_backwards = true, -- well ...
                completion = true, -- if the tabkey is used in a completion pum
                tabouts = {
                    { open = "'", close = "'" },
                    { open = '"', close = '"' },
                    { open = "`", close = "`" },
                    { open = "(", close = ")" },
                    { open = "[", close = "]" },
                    { open = "{", close = "}" },
                },
                ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
                exclude = {}, -- tabout will ignore these filetypes
            }
        end,
    },

    -- protobuf.vim
    {
        "wfxr/protobuf.vim",
        config = function() require("wfxr/protobuf.vim").setup() end,
        -- event = "User AstroFile",
    },

    -- vim-jsonnet
    {
        "google/vim-jsonnet",
        config = function() require("google/vim-jsonnet").setup() end,
        -- event = "User AstroFile",
    },

    -- startify start dashboard
    {
        "mhinz/vim-startify",
        config = function() require("vim-startify").setup() end,
    },

    -- tagbar show an outline of structure
    {
        "preservim/tagbar",
        config = function() require("preservim/tagbar").setup() end,
        cmd = { "TagbarToggle" },
    },

    -- vim-fugitive
    {
        "tpope/vim-fugitive",
        config = function() require("tpope/vim-fugitive").setup() end,
        cmd = { "Git" },
    },

    -- eink.vim https://github.com/clinstid/eink.vim
    {
        "clinstid/eink.vim",
        config = function() require("eink.vim").setup() end,
    },

    -- lens.vim and animate.vim for auto window resize
    -- not used for now. Terminal and explorer do not work very well with this.
    -- {
    --     "camspiers/lens.vim",
    --     lazy = false,
    --     -- dependencies = { "camspiers/animate.vim" },
    --     config = function()
    --         -- lazy load the plugin
    --         require("camspiers/lens.vim").setup()
    --     end,
    --     opts = {},
    -- },
}
