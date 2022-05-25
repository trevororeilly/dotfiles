set nocompatible                    " Use Vim settings, must be first
set autowriteall                    " Auto save when switching buffers
set background=dark                 " Use a dark color scheme
set backspace=2                     " Allow backspacing over everything
set colorcolumn=81                  " Show column markers
set expandtab                       " Convert tabs to spaces
set hidden                          " Save history when switching buffers
set history=50                      " Keep n lines of command line history
set ignorecase                      " Ignore case in patterns
set incsearch                       " Do incremental searching
set laststatus=2                    " Always show status line
set list listchars=tab:»·           " Show unwanted whitespace
set nobackup                        " Do not keep a backup file
set nohlsearch                      " Disable search highlighting
set noswapfile                      " Do not create swapfiles
set nowritebackup                   " Do not write a backup file
set number                          " Show line numbers
set numberwidth=5                   " Set gutter width
set ruler                           " Show the cursor position all the time
set shiftwidth=2                    " Autoindent tabs 2 spaces
set showcmd                         " Display incomplete commands
set showmatch                       " Show matching parens in insert mode
set smartcase                       " Case matters when mixed
set tabstop=2                       " Tabs are 2 spaces long
set ttimeoutlen=50                  " Set key code wait time
set wildmode=list:longest,list:full " Tab complete to longest unambiguous match

call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'chriskempson/base16-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-turbux'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'junegunn/vim-easy-align'
Plug 'nicholaides/words-to-avoid.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/tComment'
call plug#end()

" Set colorscheme
colorscheme base16-solarized-dark

" Enable file type detection
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Default to current tmux session
let g:tslime_always_current_session = 1

" Disable concealing of quotes
let g:vim_json_syntax_conceal = 0

let g:rails_projections = {
      \ 'lib/tasks/*.rake': {
      \   'test': 'spec/lib/tasks/{}_spec.rb',
      \ },
      \ 'spec/lib/tasks/*_spec.rb': {
      \   'alternate': 'lib/tasks/{}.rake'
      \ }}

" Map Ctrl + p to fzf
nnoremap <c-p> :GFiles --cached --exclude-standard --others<cr>
