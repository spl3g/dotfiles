vim.cmd [[packadd packer.nvim]]


-- Dashboard
local db = require('dashboard')
local home = os.getenv('HOME')

db.default_banner = {
  '',
  '',
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
  '',
  ' [ TIP: To exit Neovim, just power off your computer. ] ',
  '',
}
-- linux
--db.preview_command = 'ueberzug'
--
--db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
    {icon = '  ',
    desc = 'Recent sessions                         ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},
    {icon = '  ',
    desc = 'Find recent files                       ',
    action = 'Telescope oldfiles',
    shortcut = 'SPC f r'},
    {icon = '  ',
    desc = 'Find files                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Find word                               ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Load new theme                          ',
    action = 'Telescope colorscheme',
    shortcut = 'SPC h t'},
  }
db.custom_footer = { '', '🎉 If I\'m using Neovim, then my Emacs config must be broken!' }
db.session_directory = "/home/dt/.config/nvim/session"

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'tmhedberg/SimpylFold'
	use 'jeetsukumaran/vim-pythonsense'
	use 'junegunn/fzf.vim'
	use 'Vimjas/vim-python-pep8-indent'
	use 'davidhalter/jedi-vim'
	use 'glepnir/dashboard-nvim'
	use 'dense-analysis/ale'
	use 'preservim/nerdtree'
	use 'vim-airline/vim-airline'
	use 'mattn/emmet-vim'
	use 'junegunn/fzf'
	use 'tpope/vim-commentary'
	use 'Valloric/YouCompleteMe'
	use 'lifepillar/vim-gruvbox8'
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use 'nvim-treesitter/nvim-treesitter'
        use { "nvim-telescope/telescope-file-browser.nvim",
                config = function()
                require("telescope").setup {
                  extensions = {
                    file_browser = {
                      theme = "ivy",
                      -- disables netrw and use telescope-file-browser in its place
                      hijack_netrw = true,
                      mappings = {
                        ["i"] = {
                          -- your custom insert mode mappings
                        },
                        ["n"] = {
                          -- your custom normal mode mappings
                        },
                      },
                    },
                  },
                }
                end
          }
	require("telescope").load_extension "file_browser"
	use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
	requires = { 'nvim-lua/plenary.nvim', 'sharkdp/fd', 'nvim-treesitter/nvim-treesitter', 'BurntSushi/ripgrep', 'kyazdani42/nvim-web-devicons' }
        }
	-- Vim for wrighting plugins
        use 'dpelle/vim-LanguageTool' 
	use 'preservim/vim-pencil'
	use 'junegunn/limelight.vim'
	use 'junegunn/goyo.vim'
	use 'ron89/thesaurus_query.vim'
	use 'preservim/vim-markdown'
end)
