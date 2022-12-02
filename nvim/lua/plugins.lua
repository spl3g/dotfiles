vim.cmd [[packadd packer.nvim]]


 return require('packer').startup(function(use)
 	use 'wbthomason/packer.nvim'
	use 'powerman/vim-plugin-ruscmd'
 	use 'tmhedberg/SimpylFold'
 	use 'jeetsukumaran/vim-pythonsense'
 	use 'junegunn/fzf.vim'
 	use 'Vimjas/vim-python-pep8-indent'
 	use 'davidhalter/jedi-vim'
 	use 'dense-analysis/ale'
 	use 'preservim/nerdtree'
 	use 'vim-airline/vim-airline'
 	use 'junegunn/fzf'
 	use 'tpope/vim-commentary'
 	use 'Valloric/YouCompleteMe'
 	use 'lifepillar/vim-gruvbox8'
 	use 'BurntSushi/ripgrep'
 	use 'sharkdp/fd'
 	use 'vim-syntastic/syntastic'
 	use 'nvie/vim-flake8'
 	use 'kien/ctrlp.vim'
	use 'nvim-treesitter/nvim-treesitter' 
        use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'}, {'sharkdp/fd'} },
 	}
 	-- HTML + CSS
 	use 'wavded/vim-stylus'
 	use 'mattn/emmet-vim'
 	use 'digitaltoad/vim-pug'
 	use 'skammer/vim-css-color'
 	use 'turbio/bracey.vim'
 	use 'AndrewRadev/tagalong.vim'
 	use 'tpope/vim-surround'
 	-- Vim for wrighting plugins
        use 'dpelle/vim-LanguageTool' 
 	use 'preservim/vim-pencil'
 	use 'junegunn/limelight.vim'
 	use 'junegunn/goyo.vim'
 	use 'ron89/thesaurus_query.vim'
 	use 'preservim/vim-markdown'
        use {
            'glacambre/firenvim',
            run = function() vim.fn['firenvim#install'](0) end 
        }
	use 'iamcco/markdown-preview.nvim'
 end)

