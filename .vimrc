set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-markdown'
Plugin 'moll/vim-bbye'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'vim-syntastic/syntastic'
Plugin 'tmhedberg/matchit'
" Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-filebeagle'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
" Plugin 'evanmiller/nginx-vim-syntax'
" Plugin 'chriskempson/base16-vim'
Plugin 'marconett/base16-vim'
Plugin 'fatih/vim-go'
Plugin 'lambdalisue/vim-manpager'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'saltstack/salt-vim'
" Plugin 'vim-utils/vim-troll-stopper'
" Plugin 'valloric/youcompleteme'
" Plugin 'Yggdroot/indentLine'
" Plugin 'wincent/terminus'

call vundle#end()            " required

let base16colorspace=256
colorscheme base16-summerfruit-dark
set background=dark
let g:airline_theme="base16_summerfruit"

set shell=bash
syntax on
filetype plugin indent on
set encoding=utf-8
set t_Co=256
set incsearch
set hlsearch
let mapleader = "\<Space>"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
vnoremap . :norm.<CR>

" editorconfig compatibility for fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" softtabs (spaces only) 2 spaces wide
set expandtab
set shiftwidth=2
set softtabstop=2

" React syntax highlighting for .js files
let g:jsx_ext_required = 0

" disable python-mode syntax checking in favor of syntastic
let g:pymode_lint_write = 0
let g:pymode_python = 'python'
let g:pymode_breakpoint = 0
set completeopt=menu
"autocmd FileType python setlocal nonumber
set relativenumber
autocmd FileType python setlocal textwidth=0

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
" hi CursorLine cterm=NONE ctermbg=234
" hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
set cul

set hidden

nnoremap <silent> <Leader>2 :bn<CR>
nnoremap <silent> <Leader>1 :bp<CR>

nnoremap <silent> <Leader>l <c-w>l
nnoremap <silent> <Leader>h <c-w>h
nnoremap <silent> <Leader>k <c-w>k
nnoremap <silent> <Leader>j <c-w>j

nnoremap <silent> <Leader>q :Bdelete<CR>
nnoremap <silent> <Leader>w :Bdelete<CR>

nnoremap <silent> <Leader>n :set relativenumber!<CR>
nnoremap <silent> <Leader>p :set paste!<CR>

" reload vim
nnoremap <Leader>r :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" pretty json
" nnoremap <silent> <Leader>j :%!python -m json.tool<CR>

nnoremap <Enter> o

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" don't yank single characters
noremap x "_x

"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

if argc() == 2
    silent vertical all
endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|Library)$',
  \ 'file': '\v\.(zip|rar|docx|xlsx|xls|doc|avi|mp3|mp4|mov|swp|iso|tar|gz|png|jpg|jpeg|pdf|ttf|otf|pkg|jpnl|tgz|epub|exe|so|dll)$',
  \ }

if v:version >= 704
  let g:neocomplete#enable_at_startup = 1
endif
