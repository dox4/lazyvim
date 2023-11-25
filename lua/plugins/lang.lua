return {
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.rust" },

    -- configurations for shell
    {
        "mason.nvim",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "bash-language-server" })
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        optional = true,
        opts = function(_, opts)
            local nls = require("null-ls")
            opts.sources = vim.list_extend(opts.sources or {}, {
                nls.builtins.formatters.shfmt,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                bashls = {},
            },
        },
    },

    -- configurations for golang
    {
        "neovim/nvim-lspconfig",
        opts = function(_, opts)
            opts.servers.gopls.settings.gopls.staticcheck = (function()
                local go_version = vim.fn.system("go version")
                local captured_version = string.match(go_version, "go(%d+.%d+.%d+)")
                return captured_version > "1.18.10"
            end)()
        end,
    },
}
