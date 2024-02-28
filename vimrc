" Generate this date programtically: maybe vimscript?
" Last updated 2-27-24

"-- TODO Need description in here for all of these
"-- TODO Check if vimplug is installed. If NOT then install.
"-- TODO Check if Nerd font is being used. Only install plugins if yes
"-- TODO way too many plugins...

set encoding=utf8

syntax enable
filetype plugin indent on " Turn on plugin for filetype

set title
set ruler
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
set hidden

set ignorecase
set incsearch

set splitright
set splitbelow

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Swap splits prev with current
nnoremap <C-X> <C-W><C-X>

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set nojoinspaces

" Keep undo history across sessions by storing in file
if has('persisent_undo') && isdirectory(expand('~').'/vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

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
Plug 'editorconfig/editorconfig-vim'           " Allow vim to read .editorconfig
Plug 'rust-lang/rust.vim'                      " Myriad of tools for rust development
Plug 'cespare/vim-toml'                        " Syntax highlighting for toml
Plug 'bfrg/vim-cpp-modern'                     " Syntax highlighting for modern cpp
Plug 'JuliaEditorSupport/julia-vim'            " Syntax highlighting for Julia
Plug 'fatih/vim-go'                            " Myriad of tools for go development

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

hi Keyword ctermfg=172
hi String ctermfg=225
hi Constant ctermfg=197
hi Function cterm=BOLD ctermfg=178
hi Identifier cterm=BOLD ctermfg=178
hi Label ctermfg=202
hi Number ctermfg=179
hi PreProc ctermfg=211
hi Comment ctermfg=28
hi CursorLine cterm=BOLD ctermbg=234 ctermfg=NONE
hi CursorlineNR cterm=BOLD ctermbg=234 ctermfg=128
hi LineNR ctermbg=NONE ctermfg=127
hi MatchParen cterm=BOLD ctermbg=29 ctermfg=15
hi Visual cterm=BOLD ctermbg=52 ctermfg=NONE

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

" Run RustFmt on save in active *.rs files in buffer
let g:rustfmt_autosave = 1

let g:EditorConfig_exec_path = '${HOME}/.editorconfig'
