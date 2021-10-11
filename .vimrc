set encoding=utf8

filetype indent plugin on  

syntax on
set nocompatible
set hlsearch
set number relativenumber
set laststatus=2
set vb
set ruler
set spelllang=en_us
set list
set autoindent
set noscrollbind
set wildmenu
set autochdir
set colorcolumn=80
set shiftwidth=2
set tabstop=2
set smarttab
set softtabstop=2
set shellslash
set t_Co=256 " set term colors 256 termguicolors NOT supported on OSX
set listchars=eol:$,tab:->,trail:~,extends:»,precedes:«,space:·

" netrw
nnoremap - :Explore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
"-- netrw END

" Add syntax highlighting for GO
set rtp+=$GOROOT/misc/vim

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Keybindings for navigating file
nnoremap gl $
nnoremap gh 0
nnoremap gk H
nnoremap gj L
nnoremap gt gg
nnoremap gb G

" Shortcut to list all buffers
nnoremap <Leader>b :ls<CR>:b<Space>

" vim-plug
call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired' " [e move a line up && ]e move a line down
  Plug 'tpope/vim-fugitive' 
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdtree' 
 "> Theme
 " Plug 'morhetz/gruvbox'
  Plug 'sjl/badwolf'
 " Plug 'NLKNguyen/papercolor-theme'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()
"-- vim-plug END


"> theme settings
autocmd vimenter * ++nested colorscheme badwolf
"colorscheme PaperColor gruvbox badwolf
set background=dark
"-- theme settings END

" gitgutter settings
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
"-- gitgutter END

" vim-airline settings
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_theme='badwolf'
"-- vim-airline END

" nerdtree settings
nmap <C-g> :NERDTreeToggle<CR>
"-- nerdtree END
