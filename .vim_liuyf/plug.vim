 call plug#begin() 
    Plug 'preservim/nerdtree' 
    Plug 'tpope/vim-surround'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-eunuch'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'davidhalter/jedi-vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'vim-scripts/JavaDecompiler.vim'  
    Plug 'python-mode/python-mode'
    
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'camspiers/snap'
    Plug 'mrjones2014/dash.nvim', { 'do': 'make install' }
 call plug#end() 
 
