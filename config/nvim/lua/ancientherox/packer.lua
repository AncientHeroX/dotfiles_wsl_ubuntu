vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use("nvim-treesitter/nvim-treesitter-context");

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            { 'WhoIsSethDaniel/mason-tool-installer.nvim' },

            -- Autocompletion

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },

            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }
    use 'sbdchd/neoformat'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use({
        'folke/todo-comments.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    })
    use 'ThePrimeagen/vim-be-good'
    use 'eandrju/cellular-automaton.nvim'
    use 'folke/flash.nvim'
    use({
        'shellRaining/hlchunk.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        config = function()
            require('hlchunk').setup({
                chunk = {
                    enable = true,
                    priority = 15,
                    style = {
                        { fg = "#ac92d1", underline = false },
                        { fg = "#c21f30", underline = false },
                    },
                    use_treesitter = true,
                    chars = {
                        horizontal_line = "─",
                        vertical_line = "│",
                        left_top = "╭",
                        left_bottom = "╰",
                        right_arrow = ">",
                    },
                    textobject = "ic",
                    max_file_size = 1024 * 1024,
                    error_sign = true,
                    -- animation related
                    duration = 100,
                    delay = 0,
                },
                indent = {
                    enable = true,
                    priority = 10,
                    chars = {
                        "│",
                    },
                    style = {
                        "#6e6a86",
                    },
                    use_treesitter = true,
                    ahead_lines = 5,
                    delay = 100,
                },
                line_num = {
                    enable = true,
                    style = "#ac92d1",
                },
            })
        end
    })
    use({
        'sontungexpt/better-diagnostic-virtual-text',
        config = function(_)
            require('better-diagnostic-virtual-text').setup()
        end
    })
    use 'mfussenegger/nvim-jdtls'
    use 'tikhomirov/vim-glsl'
    use {
        "aznhe21/actions-preview.nvim",
        config = function()
            vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
        end,
    }
    use 'stevearc/conform.nvim'

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use {
        'rcarriga/nvim-dap-ui',
        tag = "v4.0.0",
        config = function()
            require('dapui').setup()
        end,
        requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    }
    use 'theHamsta/nvim-dap-virtual-text'
    use {
        'lewis6991/gitsigns.nvim',
        require('gitsigns').setup()
    }

    use "LunarVim/bigfile.nvim"
    -- Navigation
    use {
        "mikavilpas/yazi.nvim",
        requires = { "folke/snacks.nvim" },
        config = function()
            -- Key mappings
            vim.api.nvim_set_keymap("n", "<leader>-", "<cmd>Yazi<cr>",
                { noremap = true, desc = "Open yazi at the current file" })
            vim.api.nvim_set_keymap("v", "<leader>-", "<cmd>Yazi<cr>",
                { noremap = true, desc = "Open yazi at the current file" })
            vim.api.nvim_set_keymap("n", "<leader>cw", "<cmd>Yazi cwd<cr>",
                { noremap = true, desc = "Open the file manager in nvim's working directory" })
            vim.api.nvim_set_keymap("n", "<c-up>", "<cmd>Yazi toggle<cr>",
                { noremap = true, desc = "Resume the last yazi session" })

            -- Configuration for yazi
            require("yazi").setup({
                open_for_directories = true,
                keymaps = {
                    show_help = "<f8>",
                },
            })

            -- Disable netrw plugin if needed
            vim.g.loaded_netrwPlugin = 1
            vim.g.loaded_netrw = 1
        end,
    }
    use "lukas-reineke/indent-blankline.nvim"
    -- EWW dev
    use "elkowar/yuck.vim"
end)
