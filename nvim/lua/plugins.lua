local lazypath = "/usr/share/nvim/site/pack/lazy/start/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        init = function ()
            require("telescope").load_extension "file_browser"
        end
    },
    {
        'mrcjkb/haskell-tools.nvim',
        version = '^3', -- Recommended
        ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
    },
    {
        "nvim-telescope/telescope.nvim", 
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
        
    },
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        lazy = false,
        init = function () 
            vim.g.coq_settings = {
                auto_start = "shut-up"
            }
        end,
        dependencies = {
            {
                "ms-jpq/coq.artifacts",
                branch = "artifacts"
            },
            {
                "ms-jpq/coq.thirdparty",
                branch = "3p"
            }
        }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)

