return {
    -- for python
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "isort", "autopep8" })
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        optional = true,
        opts = function(_, opts)
            local nls = require("null-ls")
            opts.sources = opts.sources or {}
            vim.list_extend(opts.sources, { nls.builtins.formatting.isort, nls.builtins.formatting.autopep8 })
        end,
    },
    {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                ["python"] = { "isort", "autopep8" },
            },
        },
    },
}
