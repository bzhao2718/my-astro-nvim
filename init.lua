return {
    -- Comment out some settings like branch,commit, etc to make it actually work. (not fit for all plugins)
    updater = {
        remote = "origin", -- remote to use
        channel = "stable", -- "stable" or "nightly"
        version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
        -- branch = "nightly", -- branch name (NIGHTLY ONLY)
        -- commit = nil, -- commit hash (NIGHTLY ONLY)
        pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
        skip_prompts = false, -- skip prompts about breaking changes
        show_changelog = true, -- show the changelog after performing an update
        auto_quit = false, -- automatically quit the current session after a successful update
        remotes = { -- easily add new remotes to track
            --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
            --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
            --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
        },
    },
    -- Set colorscheme to use
    -- colorscheme = "astrodark",
    colorscheme = "tokyonight",
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
        virtual_text = true,
        underline = true,
    },
    lsp = {
        -- customize lsp formatting options
        formatting = {
            -- control auto formatting on save
            format_on_save = {
                enabled = false, -- enable or disable format on save globally
                allow_filetypes = { -- enable format on save for specified filetypes only
                    "lua",
                },
                ignore_filetypes = { -- disable format on save for specified filetypes
                    -- "python",
                },
            },
            disabled = { -- disable formatting capabilities for the listed language servers
                -- "sumneko_lua",
            },
            timeout_ms = 1000, -- default format timeout
            -- filter = function(client) -- fully override the default formatting function
            --   return true
            -- end
        },
        -- enable servers that you already have installed without mason
        servers = {
            -- "pyright"
        },
    },
    -- Configure require("lazy").setup() options
    lazy = {
        defaults = { lazy = true },
        performance = {
            rtp = {
                -- customize default disabled vim plugins
                disabled_plugins = {
                    "tohtml",
                    "gzip",
                    "matchit",
                    "zipPlugin",
                    "netrwPlugin",
                    "tarPlugin",
                },
            },
        },
    },
    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        -- Set up custom filetypes
        -- vim.filetype.add {
        --   extension = {
        --     foo = "fooscript",
        --   },
        --   filename = {
        --     ["Foofile"] = "fooscript",
        --   },
        --   pattern = {
        --     ["~/%.config/foo/.*"] = "fooscript",
        --   },
        -- }

        -------------- Key Mappings -------------------

        -- local Util = require "lazyvim.util"
        local map = vim.api.nvim_set_keymap

        -- -- Move to window using the <ctrl> hjkl keys
        -- map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
        -- map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
        -- map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
        -- map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
        --

        -- Resize window using <ctrl> arrow keys
        -- map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
        -- map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
        -- map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
        -- map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
        --

        -- Move Lines
        -- map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
        -- map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
        -- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
        -- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
        -- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
        -- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
        --

        -- buffers
        map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
        map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
        -- these are the default key mappings
        -- map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
        -- map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

        -- if Util.has "bufferline.nvim" then
        --     map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
        --     map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
        --     map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
        --     map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
        -- else
        --     map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
        --     map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
        --     map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
        --     map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
        -- end

        -- terminal

        -- :tnoremap <Esc> <C-\><C-n> run this works after opening nvim
        -- The folloowing works
        -- it seems using either j or k combo will mess up the zsh vim plugin's jk
        -- vim.cmd([[:tnoremap kk <C-\><C-n>]])
        vim.cmd([[:tnoremap <Esc> <C-\><C-n>]])
    end,
}
