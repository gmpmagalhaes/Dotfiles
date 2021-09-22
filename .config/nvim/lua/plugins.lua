return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "kyazdani42/nvim-web-devicons"
    use "shadmansaleh/lualine.nvim"
    use "windwp/nvim-autopairs"
    use "romgrk/barbar.nvim"
    use "arzg/vim-colors-xcode"
  end)