return {
    { "dracula/vim" },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dracula",
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            opts.options.theme = "dracula"
        end,
    },
}
