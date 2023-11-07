return {
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.go" },
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
