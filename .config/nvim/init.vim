" Vimplug configuration
" https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'andys8/vim-elm-syntax'
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-speeddating'
Plug 'terryma/vim-expand-region'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'majutsushi/tagbar'
Plug 'PeterRincker/vim-argumentative'
Plug 'tpope/vim-repeat'
Plug 'leafgarland/typescript-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'sheerun/vim-polyglot'
Plug 'dhruvasagar/vim-table-mode'

call plug#end()

" General config
set relativenumber
set termguicolors
set linebreak
colorscheme solarized8_flat

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set scrolloff=5

xmap v <Plug>(expand_region_expand)
xmap V <Plug>(expand_region_shrink)

set tabstop=2
set shiftwidth=2
set expandtab
set breakindent
autocmd Filetype elm setlocal shiftwidth=4

set ignorecase
set smartcase

let g:airline#extensions#tabline#enabled = 1
set hidden

set splitbelow
set splitright

" In normal mode press esc to deactivate highliting
nmap <esc> :nohlsearch<cr>

" In terminal mode press esc to go to normal mode
" tnoremap <esc> <C-\><C-n>

" Language server
" https://github.com/neoclide/coc.nvim
set cmdheight=2

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Use tab to navigate completion list
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Elm
let g:polyglot_disabled = ['elm'] " As prescribed by https://github.com/andys8/vim-elm-syntax#note-about-vim-polyglot
let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}
