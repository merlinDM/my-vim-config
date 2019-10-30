call plug#begin('~/.local/share/nvim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'ervandew/supertab'
    Plug 'derekwyatt/vim-scala'
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    " Plug 'artur-shaik/vim-javacomplete2'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
call plug#end()

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala 

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

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Remap for do action format
nnoremap <silent> F :call CocAction('format')<CR>

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" https://vim.fandom.com/wiki/Pasting_registers
:inoremap <C-R>+ <C-R><C-R>+

:nnoremap <Tab> >>
:nnoremap <S-Tab> <<

" SuperTab settings
" Doesn't work :-(
let g:SuperTabMappingForward = '<Tab>'
let g:SuperTabMappingBackward = '<S-Tab>'

" Easier split navigations
nnoremap <M-Down> <C-W><C-J>
nnoremap <M-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

" Easier tab navigations
nnoremap <M-Tab> gt

" Relative Number Switch via ctrl-i
set norelativenumber
nnoremap <C-l> :set relativenumber!<CR>

" NERDTreeToggle
nnoremap <leader>t :NERDTreeToggle<CR>
