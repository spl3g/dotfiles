vim.cmd [[packadd packer.nvim]]

 return require('packer').startup(function(use)
 	use 'wbthomason/packer.nvim'
	use 'arjunmahishi/flow.nvim'
        use 'Tastyep/structlog.nvim'
	use 'elkowar/yuck.vim'
	use 'powerman/vim-plugin-ruscmd'
 	use 'tmhedberg/SimpylFold'
 	use 'jeetsukumaran/vim-pythonsense'
 	use 'junegunn/fzf.vim'
 	use 'Vimjas/vim-python-pep8-indent'
 	use 'davidhalter/jedi-vim'
	use 'JoosepAlviste/nvim-ts-context-commentstring'
	-- use {
        --   "folke/which-key.nvim",
        --   config = function()
        --     vim.o.timeout = true
        --     vim.o.timeoutlen = 300
        --     require("which-key").setup {
        --       -- your configuration comes here
        --       -- or leave it empty to use the default settings
        --       -- refer to the configuration section below
        --     }
        --   end
        -- }
	use {
          'nvim-tree/nvim-tree.lua',
          requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
 	use 'dense-analysis/ale'
 	use 'preservim/nerdtree'
 	-- use 'vim-airline/vim-airline'
 	use 'junegunn/fzf'
 	use 'tpope/vim-commentary'
 	use 'Valloric/YouCompleteMe'
 	use 'lifepillar/vim-gruvbox8'
 	use 'BurntSushi/ripgrep'
	use 'xiyaowong/nvim-transparent'
 	use 'sharkdp/fd'
 	use 'vim-syntastic/syntastic'
 	use 'nvie/vim-flake8'
 	use 'kien/ctrlp.vim'
	use 'nvim-treesitter/nvim-treesitter' 
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
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
 	use 'nims11/vim-nano'
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

        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })
end),

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
   

-- db.custom_header = {
-- 	     '',
-- 	     '',
-- 	     ' ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
-- 	     ' ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
-- 	     '▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
-- 	     '▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
-- 	     '▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
-- 	     '░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
-- 	     '░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
-- 	     '   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
-- 	     '         ░    ░  ░    ░ ░        ░   ░         ░   ',
-- 	     '                                ░                  ',
-- },

