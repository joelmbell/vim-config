so ~/.config/nvim/plugins.vim

syntax on

set hidden
set wildmenu
set showcmd
set backspace=indent,eol,start
let mapleader = ","
let maplocalleader = ","
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
nnoremap <Leader><space> :noh<cr>

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

" Org Mode
let g:org_todo_keywords=['TODO(t)', 'IN-PROGRESS(i)', 'WAITING(w)', '|', 'DONE(d)', 'CANCELLED(c)']
let g:org_todo_keyword_faces=[
            \ ['TODO',          [':foreground white',   ':background none',     ':weight bold']],
            \ ['IN-PROGRESS',   [':foreground white',   ':background none',     ':weight bold',     ':slant italic']],
            \ ['WAITING',       [':foreground yellow',  ':background none',     ':weight bold']],
            \ ['DONE',          [':foreground black',   ':background white',    ':weight bold']],
            \ ['CANCELLED',     [':foreground white',   ':background red',      ':weight bold',   ':decoration underline']]]
let g:org_heading_shade_leading_stars = 0
let g:org_indent = 1
