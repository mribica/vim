"pathogencall
call pathogen#runtime_append_all_bundles()

set noswapfile
set nobackup
set nocompatible
syntax enable
filetype plugin indent on
set encoding=utf-8

"matchit plugin req
"filetype plugin on

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"line numbering
:set nu!

"tema
":colorscheme desert
set background=dark
colorscheme solarized


"remove menu
set guioptions-=m
 
"remove toolbar
set guioptions-=T
 
"remove scrollbars
set guioptions-=r
set guioptions-=L
 
"use vim tabs
set guioptions-=e

"set tab width
set tabstop=2
set shiftwidth=2
set softtabstop=2

"set font
if has('gui_running')
   "set gfn=tahoma:h12
endif

set guifont=Source\ Code\ Pro\ Light:h13

"turn off visual bell and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


"Focus on NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"toogle NerdTree
nmap <silent> <S-n> :NERDTreeToggle<CR>


"Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <C-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

"Tabs
"open tab
nmap <silent> <c-t> :tabedit<CR>

" toggle between last open buffers
nnoremap <leader><leader> <c-^>


 "Apply .vimrc changes on the fly
" Source the vimrc file after saving it
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif

"Map ,v to open .vimrc in new tab
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

let mapleader = ","
nmap <leader>hl :nohlsearch<CR>

"show matching brackets by default
set showmatch


"Command-T
" use comma as <Leader> key instead of backslash
let mapleader=","

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"command t
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
map <leader>b :CommandTFlush<cr>\|:CommandTBuffer<cr>

" Ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
nnoremap <C-r> :CtrlPBufTag<cr>


" ignore Rubinius, Sass cache files
set wildignore+=tmp/**,*.rbc,.rbx,*.scssc,*.sassc
" ignore Bundler standalone/vendor installs & gems
set wildignore+=bundle/**,vendor/bundle/**,vendor/cache/**
set wildignore+=node_modules/*
"ignore swp and tmp files
set wildignore+=*.swp,*.bak,*.png,*.jpg,*.ico,*.gif

" Allow w!! to save as root
"cmap w!! %!sudo tee > /dev/null %
cmap w!! w !sudo dd of=%

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Gundo
map <leader>g :GundoToggle<cr>

" To save, ctrl-s.
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>a

"Windows like bahaviour, ctrl+v, ctrl+s, right click ...
behave mswin
source $VIMRUNTIME/mswin.vim
