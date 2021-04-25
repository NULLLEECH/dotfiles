" init.vim
"           ________
" |   /|   / ___    \    |~~~~~|  |~~~~~|
" |  / |  / /   \    \   |        |
" | /  |  \ \    \   /   |        |
" |/   |   \/     |||    |        |
"
" NULL LEECH
"
" VERSION 1.5


" BASIC START
filetype plugin indent on
set nocp
set history=500
set gcr=a:blinkon0 " No Blink
" BASIC END


" ENCODING START
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
scriptencoding utf-8
" ENCODING STOP


" BUILT BY ME START
source ~/.config/nvim/source/personal.vim
source ~/.config/nvim/source/plugin.vim
source ~/.config/nvim/source/ab.vim
" BUILT BY ME END


" PLUGIN START
execute Plugin_Begin()
execute Plugins()
execute Plugin_Update()
execute Plugin_End()
" PLUGIN END


" AB START
execute AB_C()
" AB END


" BACKUP START
set backup
set backupdir=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" BACKUP END


" COLOR START
syntax enable
syntax on
colo delek "koehler
" COLOR END


" MISC START
set wildmode=longest,list
set backspace=indent,eol,start
set hidden
set number
set ruler
set nowrap
set linebreak
set autoread
set list
set confirm
set novisualbell noerrorbells
set ttyfast
set lazyredraw
" MISC END


" MAP START
nnoremap r R
nnoremap Q <nop>
nnoremap q: <nop>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap :Q :q
nnoremap :Qa :qa
nnoremap :Q! :q!
nnoremap :Qa! :qa!
nnoremap Q @q

" see https://stackoverflow.com/a/16136133/6064933
"nnoremap <expr> oo 'm`' . v:count1 . 'o<Esc>``'
"nnoremap <expr> OO 'm`' . v:count1 . 'O<Esc>``'

nnoremap <silent> <expr> <Down> (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> <Up> (v:count == 0 ? 'gk' : 'k')

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0
" MAP END


" TAB START
set expandtab
set shiftwidth=8
set tabstop=8
set softtabstop=8
set nofoldenable
" TAB END


" LEADER START
let mapleader=","
nnoremap <leader>t :split<CR>:terminal<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>e :Files<CR>
nnoremap <leader>c :Colors<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>T :TagbarToggle<CR>
" LEADER END


" SYNTASTIC START
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" SYNTASTIC END


" NERDTREE START
let g:NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''
let g:NERDTreeIgnore = ['\.pyc$', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" NERDTREE STOP


" SEARCH START
set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch
" SEARCH END


" SHOW START
set showcmd
set showmode
" SHOW END


" OPENAS START
set splitbelow
set splitright
" OPENAS END


" HARD START
set modelines=0
set nomodeline
set exrc
set secure
" HARD END
