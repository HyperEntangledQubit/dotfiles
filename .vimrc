
" Add syntax highlighting for GO
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set number


call plug#begin()
 Plug 'morhetz/gruvbox'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
