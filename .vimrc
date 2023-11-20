call plug#begin()                                                                                                                                                                     
Plug 'pearofducks/ansible-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'miyakogi/conoline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'thaerkh/vim-indentguides' 

call plug#end()

" let g:airline_theme='solarized'
let g:airline_theme='cobalt2'
let g:conoline_auto_enable = 1

set bg=dark
colorscheme iceberg
" colorscheme two-firewatch.vim
"colorscheme solarized8_high
set termguicolors
set encoding=UTF-8

" set mouse=a

" Highlights searches
set hlsearch

" Searches incrementally
set incsearch

" Set tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Convert tab stops to spaces
set expandtab
set autoindent
set fileformat=unix

" Syntax highlighting
syntax on

" Line numbers
" set number relativenumber
set number

" Autocomplete
set wildmode=longest,list,full

" VimPlug
nmap <leader>u :PlugUpdate<CR>
nmap <leader>i :PlugInstall<CR>

" Replace all - alias S
nnoremap S :%s//g<Left><Left>

" Reload .vimrc config file
nnoremap <C-S-R> :source ~/.vimrc<CR>

" Remove highlighting
"nnoremap <C-H> :noh<CR>
map <silent> <leader><cr> :noh<cr>

" New tab - alias control-t
nnoremap <silent> <C-T> :tabnew<CR>

" Fast saving of a buffer
nmap <leader>w :w!<cr>

" Save and quit
nmap <C-s> :w<CR>
nmap <C-q> :q<CR>

" Quick save and quit
nmap <leader>q :wq<CR>

" Cycle tabs
nnoremap <C-Up> gT
nnoremap <C-Down> gt

" Toggle line numbers
nmap <leader>] :set number!<CR>                                                                                        

" Open FZF
nmap <C-f> :FZF<CR>

" Open NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Paste with system clipboard - alias control-i
nnoremap <S-Insert> <C-i>

" Switch to next buffer - alias control-n
nnoremap <silent> <C-]> :bn<CR>

" Switch to previous buffer - alias control-p
nnoremap <silent> <C-[> :bp<CR>

" Fast deleting of a buffer
nmap <leader>d :bd<CR>

"Add line to bottom
nmap <leader>o GGo

" Use ctrl-arrow to select active split
nmap <silent> <C-S-up> :wincmd k<CR>
nmap <silent> <C-S-down> :wincmd j<CR>
nmap <silent> <C-S-left> :wincmd h<CR>
nmap <silent> <C-S-right> :wincmd l<CR>

" Line highlight in insert mode
:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline

" Slim cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

