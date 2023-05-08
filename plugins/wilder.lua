return {

    -- wilder auto complete commands
    {
        "gelguy/wilder.nvim",
        lazy = false,
        config = function()
            local wilder = require "wilder"
            wilder.setup { modes = { ":", "/", "?" } }

            wilder.set_option("pipeline", {
                wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
            })

            wilder.set_option(
                "renderer",
                wilder.wildmenu_renderer {
                    highlighter = wilder.basic_highlighter(),
                }
            )
        end,

        -- Currently not working. Fuzzy search
        -- dependencies = { "romgrk/fzy-lua-native" },
        -- config = function()
        --     local wilder = require "wilder"
        --     wilder.setup { modes = { ":", "/", "?" } }
        --
        --     wilder.set_option("pipeline", {
        --         wilder.branch(
        --             wilder.cmdline_pipeline {
        --                 fuzzy = 1,
        --                 set_pcre2_pattern = 1,
        --             },
        --             wilder.python_search_pipeline {
        --                 pattern = "fuzzy",
        --             }
        --         ),
        --     })
        --
        --     local highlighters = {
        --         wilder.pcre2_highlighter(),
        --         wilder.basic_highlighter(),
        --     }
        --
        --     wilder.set_option(
        --         "renderer",
        --         wilder.renderer_mux {
        --             [":"] = wilder.popupmenu_renderer {
        --                 highlighter = highlighters,
        --             },
        --             ["/"] = wilder.wildmenu_renderer {
        --                 highlighter = highlighters,
        --             },
        --         }
        --     )
        -- end,
    },
}
