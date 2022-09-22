
call plug#begin()
  Plug 'tmhedberg/SimpylFold'
  Plug 'jeetsukumaran/vim-pythonsense'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'davidhalter/jedi-vim'
  Plug 'glepnir/dashboard-nvim'
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plug 'mattn/emmet-vim'
  Plug 'https://github.com/tpope/vim-commentary.git'
  Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
call plug#end()

colorscheme gruvbox8


