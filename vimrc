cd /home/muamer
"pathogen
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


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

set guifont=SourceCodePro\ 10

"turn off visual bell and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


"Focus on NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"toogle NerdTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

"Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <C-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

"Fuzzy finder ctrl + F11 **/
nnoremap <C-F11> :FufFile **/<CR>

"snipMate
"define .ctp as html filetype
"au BufNewFile,BufRead *.ctp set filetype=php.html

"define erb as ruby filetype
"au BufNewFile,BufRead *.html.erb set filetype=html.eruby.rails
"au BufNewFile,BufRead *.js.erb set filetype=html.eruby.rails
"au BufNewFile,BufRead *.coffee set filetype=coffee

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


"Command-T ignore swp and tmp files
set wildignore=*.swp,*.bak,*.png,*.jpg,*.ico,*.gif

" Allow w!! to save as root
"cmap w!! %!sudo tee > /dev/null %
cmap w!! w !sudo dd of=%

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" To save, ctrl-s.
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>a

"Windows like bahaviour, ctrl+v, ctrl+s, right click ...
behave mswin
source $VIMRUNTIME/mswin.vim

