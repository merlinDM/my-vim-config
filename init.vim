let mapleader = ","

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'ervandew/supertab'    
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'

    " Plug 'derekwyatt/vim-scala'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if has_key(g:plugs, 'neoclide/coc.nvim')
    source ~/.config/nvim/coc-config.vim
endif

if has_key(g:plugs, 'derekwyatt/vim-scala')
    source ~/.config/nvim/vim-scala-config.vim
endif

if has_key(g:plugs, 'ervandew/supertab')
    source ~/.config/nvim/supertab-config.vim
endif

set nowrap
set number
set title
set ignorecase
set encoding=utf-8

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" https://vim.fandom.com/wiki/Pasting_registers
inoremap <C-R>+ <C-R><C-R>+

nnoremap <Tab> >>
nnoremap <S-Tab> <<

" Easier split navigations
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-l> <C-W><C-L>
nnoremap <M-h> <C-W><C-H>

" Easier tab navigations
nnoremap <M-Tab> gt
nnoremap <M-t> :tabnew<CR>
nnoremap <M-w> :tabclose<CR>

" Relative Number switch
set norelativenumber
nnoremap <C-l> :set relativenumber!<CR>

" NERDTreeToggle
nnoremap <leader>t :NERDTreeToggle<CR>

nnoremap <leader>rc :source $MYVIMRC<CR>
