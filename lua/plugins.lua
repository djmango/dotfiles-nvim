return {
    {
        "gbprod/substitute.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "kylechui/nvim-surround",
        version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({})
        end
    },
    { "wellle/targets.vim", event = "VeryLazy" },
    { "tpope/vim-repeat", event = "VeryLazy" },
}
