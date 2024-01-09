local function random_colorscheme()
    local themes = {
        "dracula",
        "tokyonight",
        -- "catppuccin-mocha",
        "monokai-pro",
        "onedark",
    }
    math.randomseed(os.time())
    local index = math.random(#themes)
    local theme = themes[index]
    vim.notify("set random theme: " .. theme, vim.log.levels.INFO)
    return theme
end

local theme = random_colorscheme()

return {
    { "dracula/vim" },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = (function()
                if math.random() > 0.5 then
                    return "moon"
                else
                    return "night"
                end
            end)(),
        },
    },
    -- {
    --     "catppuccin/nvim",
    --     opts = {
    --         transparent_background = true,
    --     },
    -- },
    {
        "loctvl842/monokai-pro.nvim",
        opts = {
            filter = (function()
                local filters = {
                    "classic",
                    "octagon",
                    "pro",
                    "machine",
                    "ristretto",
                    "spectrum",
                }
                return filters[math.random(#filters)]
            end)(),
        },
    },
    {
        "navarasu/onedark.nvim",
        opts = {
            style = (function()
                local styles = {
                    "dark",
                    "darker",
                    "cool",
                    "deep",
                    "warm",
                    "warmer",
                }
                return styles[math.random(#styles)]
            end)(),
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = theme,
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            opts.options.theme = theme
        end,
    },
}
