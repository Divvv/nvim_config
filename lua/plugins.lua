local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

ensure_packer()

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'pangloss/vim-javascript'
    use 'tpope/vim-fugitive'
    use 'mxw/vim-jsx'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require('nvim-tree').setup({}) end
    }
    use 'folke/tokyonight.nvim'
    use 'nvim-lualine/lualine.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true
            require('bufferline').setup{}
        end
    }
    use "windwp/nvim-ts-autotag"
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup({}) end }
end)

