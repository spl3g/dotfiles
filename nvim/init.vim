
# Vim-plug
call plug#begin()
  Plug 'tmhedberg/SimpylFold'
  Plug 'jeetsukumaran/vim-pythonsense'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'davidhalter/jedi-vim'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'mattn/emmet-vim'
  Plug 'https://github.com/tpope/vim-commentary.git'
  Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
call plug#end()

# Colorscheme
colorscheme gruvbox8

# Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
