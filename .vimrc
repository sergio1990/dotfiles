call plug#begin('~/.vim/plugged')
"===> Core
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'vim-airline/vim-airline'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'kien/ctrlp.vim'
" Toggle the cursor shape in the terminal for Vim
Plug 'jszakmeister/vim-togglecursor'

"===> Tools
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'michaeljsmith/vim-indent-object'
Plug 'cyphactor/vim-open-alternate'
" nerdcommenter and tcomment_vim are alternatives? Investigate the both and
" end up with only one.
Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'less', 'sass'] }
Plug 'terryma/vim-multiple-cursors'
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'
" endwise.vim: wisely add `end` in ruby, endfunction/endif/more in vim script,
Plug 'tpope/vim-endwise'
" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch'
" A Narrow Region Plugin for vim (like Emacs Narrow Region)
Plug 'chrisbra/NrrwRgn'
" Refactoring tool for Ruby in vim!
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
"===> Langs
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'jimenezrick/vimerl', { 'for': ['elixir', 'erlang'] }
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'shime/vim-livedown', { 'ref': '9a881c4ef7113df6d6f81830da8b07c0462ddbf9', 'for': 'markdown' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'hallison/vim-rdoc', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'unifieddialog/vim-rspec-focus', { 'ref': 'bfa0265b3c38e03ffda492b3d59b42efae569130', 'for': 'ruby' }
"===> Themes
Plug 'altercation/vim-colors-solarized'

call plug#end()

let mapleader = ","
syntax enable

let g:airline_powerline_fonts = 1

set background=dark
" For valid color presenting in iTerm2 with solarized color preset
let g:solarized_termcolors = 16
set term=xterm-256color
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
color solarized

set guifont=Inconsolata\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set termencoding=utf-8

let g:airline_theme = "solarized"

" END GUI setupping

"====== Control NERDTree
nnoremap <Leader>n :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
set guioptions-=L " Hide scrollbars
" END Control NERDTree

"====== Identation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" END Identation


"====== Control line numbering
set number

function! NumberToggle()
  if(&relativenumber == 1)
    set relativenumber!
  else
    set relativenumber
  endif
endfunc

map <Leader>l :call NumberToggle()<cr>
" END Control line numbering

nnoremap <leader>. :OpenAlternate<cr>

let g:rspec_runner = "os_x_iterm2"
let g:RspecBin = "bin/rspec"

" Command-/ to toggle comments
map <D-/> :TComment<CR>
imap <D-/> <Esc>:TComment<CR>i

"====== Search settings
set hlsearch " Highlighting search results
set incsearch " To move the cursor to the matched string, while typing the search pattern
" END Search settings

"====== Current Line Highlight
set cursorline
" END Current Line Highlight

"====== Stop line swapping
set nowrap
" END Stop line wrapping

"====== Colorcolumn
set colorcolumn=100
" END Colorcolumn

nmap gm :LivedownToggle<CR>

"====== Set a list of invisible characters representation
" You can turn on/off them by `:set list` and `:set nolist` respectevely
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

"Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Set lazy redraw.
" Without it there is a problem with fast moving through the file and as a
" result vim consumes a lot of CPU
set lazyredraw

" Clipboard sharing for Mac OS
" http://vim.wikia.com/wiki/Mac_OS_X_clipboard_sharing
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
