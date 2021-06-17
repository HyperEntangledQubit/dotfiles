filetype indent plugin on  

syntax on
set nocompatible
set hlsearch
set number relativenumber
set laststatus=2
set vb
set ruler
set spelllang=en_us
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
set t_Co=256 " set term colors 256

set encoding=UTF-8

" netrw
nnoremap - :Explore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
"-- netrw END

" Add syntax highlighting for GO
set rtp+=$GOROOT/misc/vim

" vim-plug
call plug#begin()
 Plug 'vim-airline/vim-airline'
 Plug 'ryanoasis/vim-devicons'
 Plug 'tpope/vim-unimpaired' " [e move a line up && ]e move a line down
 Plug 'tpope/vim-fugitive' 
 Plug 'airblade/vim-gitgutter'
 "> Theme
 "Plug 'morhetz/gruvbox'
 Plug 'NLKNguyen/papercolor-theme'
call plug#end()
"-- vim-plug END


"> theme settings
autocmd vimenter * ++nested colorscheme PaperColor 
"colorscheme PaperColor gruvbox
set background=dark
"-- theme settings END
