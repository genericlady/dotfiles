"===============================================================================
"                             ~My vimrc~
"===============================================================================
"
" Author:               Yianna Kokalas [https://manyiterations.com]
" Source:               https://github.com/genericlady/dotfiles
"
"-------------------------------------------------------------------------------

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

" Easy access to the start of the line
nmap 0 ^

function! SayHello()
  echo "hello"
endfunction

" Want to set this before any others
let mapleader = "\<Space>"
let g:syntastic_javascript_checkers=['eslint']

nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>h :echo "Hello"<cr>

" <C-[>
" capslock to escape
imap jk <esc>
imap kj <esc>

" This maps ctrl+s to escape and write to file.
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" autocmd Filetype help nmap <buffer> q :q<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set history=1000

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ngmy/vim-rubocop'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'parkr/vim-jekyll'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tpope/vim-projectionist'
Plugin 'prettier/vim-prettier'
Plugin 'vim-syntastic/syntastic'
Plugin 'vimwiki/vimwiki'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Personal Settings
set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set colorcolumn=80
set history=500

" map-cmd   lhs   rhs
nmap <C-s> :w<cr>
autocmd Filetype help nmap <buffer> q :q<CR>

augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

if !has('nvim')
  set ttymouse=xterm2
endif

if exists(':tnoremap')
  tnoremap <Esc> <C-\><C-n>
endif

" Output day time in normal mode
:map <F2> a<C-R>=strftime("%c")<CR><Esc>

" Open help in new tab
cabbrev help tab help

" Resize vim splits
nnoremap <leader>h :vertical resize +10<CR>
nnoremap <leader>H :vertical resize +1<CR>
nnoremap <leader>j :resize -10<CR>
nnoremap <leader>J :resize -1<CR>
nnoremap <leader>k :resize +10<CR>
nnoremap <leader>K :resize +1<CR>
nnoremap <leader>l :vertical resize -10<CR>
nnoremap <leader>L :vertical resize -1<CR>

" Syntastic settings
" set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_id_checkers = 0
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" let g:syntastic_error_symbol = "\u2717"
" let g:syntastic_warning_symbol = "\u26A0"
" Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
set ft=confluencewiki 
