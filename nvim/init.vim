so ~/.config/nvim/plugins.vim

syntax on
set backspace=indent,eol,start
let mapleader = ","
set number
set noswapfile
set noerrorbells visualbell t_vb=
set autowriteall
set complete=.,w,b,u
set ls=2
set scrolloff=20
set nowrap
set clipboard=unnamed

"---------Tabs--------"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"-------Visuals-----"
colorscheme atom-dark-256
set t_Co=256
set linespace=9
set guioptions-=e
hi LineNr guibg=bg

"------Split Management------"
set splitbelow
set splitright

nmap <C-j> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <Leader>vsr :vertical resize<space>
nmap <Leader>sr :resize<space>

"vsp and sp for splits"

"--------Search----------"
set ignorecase
set incsearch
set hlsearch
set gdefault
set showmatch
nnoremap / /\v
vnoremap / /\v


"-------Mappings---------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit $MYVIMRC/../plugins.vim<cr>
nmap <Leader>1 :NERDTreeToggle<cr>

" Fine a tag
nmap <Leader>f :tag<space>

" Bracket handling nicer
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> C<cr>)<c-o><s-o>
