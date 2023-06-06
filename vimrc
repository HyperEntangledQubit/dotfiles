" Last updated 5-20-23

"-- TODO Check if vimplug is installed. If NOT then install.
"-- TODO Check if Nerd font is being used. Only install plugins if yes

set encoding=utf8

syntax enable
filetype plugin indent on " Turn on plugin for filetype

set title
set clipboard=unnamed
set ttyfast
set ttimeoutlen=50
set noerrorbells
set backspace=indent,eol,start
set showcmd
set fileformats=unix,mac,dos

set cursorline
set colorcolumn=80
set textwidth=80
set scrolljump=5
set lazyredraw
set showmatch
set number " Make this a macro
set hidden

set ignorecase
set incsearch

set splitright
set splitbelow

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=2

set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set nojoinspaces

map <leader>t :NERDTreeToggle %<CR>
map <leader>b :Git blame<CR>
map <leader>n :set rnu!<CR>
map <leader>h :set hls!<CR>
map <leader>= :Tabularize /=<CR>
map <leader>m :MaximizerToggle!<CR>

map <leader>1 :tabfirst<CR>
map <leader>i :IndentGuidesToggle<CR>
map <leader>\ :tabnext<CR>
map <leader>] :tabprev<CR>
map <leader>0 :tablast<CR>
map <leader>c :tabclose<CR>

call plug#begin()

" Nerd font required
Plug 'ryanoasis/vim-devicons'                  " Add glyphs to NerdTree (slow)
Plug 'preservim/nerdtree'                      " Add NerdTree to replace NetRW
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Add syntax highlighting to NerdTree (slow)

" Convienece
Plug 'kshenoy/vim-signature'                   " Add marks to vim gutter-line
Plug 'tpope/vim-commentary'                    " Shortcut to comment out lines in all lang(s)
Plug 'tpope/vim-unimpaired'                    " Handy bracket mappings '[e' move line up, ]e line down
Plug 'szw/vim-maximizer'                       " Toggle buffer min/max
Plug 'vim-airline/vim-airline'                 " Adds airline to vim
Plug 'andymass/vim-matchup'                    " Extend % operator in vim
Plug 'andrewradev/splitjoin.vim'               " gS to split one line into multi gJ to join multi into single

" Language specific
Plug 'rust-lang/rust.vim'                      " Myriad of tools for rust development
Plug 'cespare/vim-toml'                        " Syntax highlighting for toml
Plug 'bfrg/vim-cpp-modern'                      " Syntax highlighting for modern cpp

" Git helpers
Plug 'airblade/vim-gitgutter'                  " Shows status in VCS tracked files in gutter
Plug 'tpope/vim-fugitive'                      " Allows for git commands in vim

" Whitespace management
Plug 'godlygeek/tabular'                       " Align text via regex
Plug 'mg979/vim-visual-multi'                  " Allow for multiple selection based on char
Plug 'ntpeters/vim-better-whitespace'          " Strip & highlight whitespace
Plug 'nathanaelkane/vim-indent-guides'         " Allows for colored indent guides
Plug 'ervandew/supertab'                       " Allow for tab completion


" Theme setting
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
hi Comment ctermfg=64
hi Number ctermfg=178
hi Visual cterm=bold ctermbg=232 ctermfg=NONE
hi CursorLine cterm=bold ctermbg=237 ctermfg=NONE

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0

hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237

let NERDTreeShowHidden=1

if has('macunix')
    let g:rust_clip_command = 'pbcopy'
else
    let g:rust_clip_command = 'xclip -selection clipboard'
endif

autocmd BufNew,BufRead *.asm set ft=nasm
