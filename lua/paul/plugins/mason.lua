return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "clangd",
                "cssls",
                "eslint",
                "html",
                "jsonls",
                "pyright",
            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },

        })

   end,
}
