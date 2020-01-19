set nocompatible
filetype off

" Begin: Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'joequery/Stupid-EasyMotion'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'lifepillar/vim-solarized8'
Plugin 'romainl/flattened'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/VimCalc'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'vim-scripts/python.vim'
Plugin 'vim-scripts/python_match.vim'
Plugin 'szw/vim-tags'
Plugin 'godlygeek/tabular'
" Plugin 'wellle/targets.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'chrisbra/csv.vim'
Plugin 'othree/xml.vim'
call vundle#end()
" End: Vundle

filetype plugin indent on
autocmd BufNewFile,BufRead *.asm set filetype=nasm

au FileType c,cpp nnoremap <buffer> <c-]> :YcmCompleter GoTo<CR>
au FileType python nnoremap <buffer> <c-]> :YcmCompleter GoTo<CR>

let mapleader=','

syntax enable
set termguicolors
colorscheme solarized8
set background=dark
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

set ttyfast
set path+=**

set hlsearch
set incsearch
set showmatch
nnoremap <leader><space> :noh<CR>

set hidden

" identation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

" show whitespace (activate with :set list, deactivate with :set nolist),
" or toggle with <leader>l
" set listchars=eol:¬,tab:‣\ ,extends:>,precedes:<,space:·
" set listchars=eol:¬,tab:‣\ ,extends:>,precedes:<,space:·,trail:☠
set listchars=eol:¬,tab:‣\ ,extends:>,precedes:<,space:·,trail:␣
nmap <leader>l :set list!<CR>

" Keep search results at the center of screen
"nmap n nzz
"nmap N Nzz
"nmap * *zz
"nmap # #zz
"nmap g* g*zz
"nmap g# g#zz

" get rid of <F1> opening help
noremap <F1> <Esc>
inoremap <F1> <Esc>
cnoremap <F1> <Esc>

" remap ; to :
nnoremap ; :

set laststatus=2
set wildmenu
let g:airline_powerline_fonts = 1

if executable('rg') " Use ripgrep
    " ack.vim
    let g:ackprg = 'rg -S --no-heading --vimgrep'

    " ctrlp.vim
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
elseif executable('ag') " Use the silver searcher ag
    " ack.vim
    let g:ackprg = 'ag --vimgrep'

    " ctrlp.vim
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" Window movement mappings
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" Ack mappings
noremap <leader>a <Esc>:Ack! <cword><CR>
noremap <leader>? <Esc>:AckHelp! <cword><CR>

" NERDTree, Tagbar mappings
noremap <leader>nt <Esc>:NERDTreeToggle<CR>
noremap <leader>tb <Esc>:TagbarToggle<CR>
nnoremap <leader>xp :NERDTreeToggle<CR>:TagbarToggle<CR>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/

" fzf.vim mappings
nnoremap <leader>f <Esc>:Lines <C-r><C-w><CR>
nnoremap <leader>j <Esc>:BLines<CR>
nnoremap <leader>J <Esc>:Lines<CR>
nnoremap <leader>p <Esc>:History<CR>
nnoremap <leader>b <Esc>:Buffers<CR>
nnoremap <leader>t <Esc>:Files<CR>
nnoremap <leader>h <Esc>:Helptags<CR>
nnoremap <leader>w <Esc>:Windows<CR>
nnoremap <leader>m <Esc>:Maps<CR>
nnoremap <leader>; <Esc>:Commands<CR>
nnoremap <leader>gc <Esc>:BCommits<CR>
nnoremap <leader>gC <Esc>:Commits<CR>

" fugitive mappings
nnoremap <leader>gr <Esc>:Gread<CR>
nnoremap <leader>gd <Esc>:Gdiff<CR>
nnoremap <leader>gw <Esc>:Gwrite<CR>
nnoremap <leader>gs <Esc>:Gstatus<CR>

nnoremap <leader>sw <Esc>:StripWhitespace<CR>

set cursorline
set number relativenumber
function! NumberCycle()
    if(&number == 0)
        set number
    elseif(&relativenumber == 0)
        set relativenumber
    else
        set nonumber
        set norelativenumber
    endif
endfunc
nnoremap <C-n> :call NumberCycle()<CR>

function! RedirStdoutNewTabSingle(cmd)
    let a:newt= expand('%:p') . ".out.tmp"
    tabnext
    if expand('%:p') != a:newt
        tabprevious
        exec "tabnew" . a:newt
    else
        exec "%d"
    endif
    exec 'silent r !' . a:cmd
    set nomodified
endfunc

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsListSnippets="<C-m>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

