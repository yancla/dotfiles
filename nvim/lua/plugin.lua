return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require"nvim-treesitter.configs".setup {
                highlight = { enable = true }
            }
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Colors
    use {
        "folke/tokyonight.nvim",
    }

    use {
        'ms-jpq/chadtree',
        branch = 'chad',
        run = 'python3 -m chadtree deps'
    }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use {
        'mfussenegger/nvim-dap',
    }

    use {
        'ms-jpq/coq_nvim',
        branch = 'coq'
    }
    use {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
    }
    use {
        'ms-jpq/coq.thirdparty',
        branch = '3p'
    }
end)
