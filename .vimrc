call plug#begin('~/.vim/plugged')
"===> Core
Plug 'https://github.com/scrooloose/nerdtree.git'
" A plugin of NERDTree showing git status
"Plug 'Xuyuanp/nerdtree-git-plugin'
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
"Plug 'scrooloose/syntastic', { 'tag': 'v3.7.0' }
Plug 'tpope/vim-fugitive'
Plug 'michaeljsmith/vim-indent-object'
Plug 'cyphactor/vim-open-alternate'
Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'terryma/vim-multiple-cursors'
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'
" endwise.vim: wisely add `end` in ruby, endfunction/endif/more in vim script,
Plug 'tpope/vim-endwise'
" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch'
" A Narrow Region Plugin for vim (like Emacs Narrow Region)
Plug 'chrisbra/NrrwRgn'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
"Plug 'airblade/vim-gitgutter'
" Refactoring tool for Ruby in vim!
Plug 'ecomba/vim-ruby-refactoring'
" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
" Highlight the flooding part of an overly long line.
"Plug 'whatyouhide/vim-lengthmatters'
Plug 'mattreduce/vim-mix'
Plug 'https://github.com/c-brenn/mix-test.vim.git'
Plug 'noprompt/vim-yardoc'
Plug 'https://github.com/heavenshell/vim-jsdoc'
"Plug 'ashisha/image.vim'
Plug 'slashmili/alchemist.vim'
Plug 'chrisbra/csv.vim'
"===> Langs
Plug 'vim-scripts/Arduino-syntax-file'
Plug 'tpope/vim-cucumber'
Plug 'elixir-lang/vim-elixir'
Plug 'jimenezrick/vimerl'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'shime/vim-livedown', { 'ref': '9a881c4ef7113df6d6f81830da8b07c0462ddbf9'}
Plug 'tpope/vim-rails'
Plug 'hallison/vim-rdoc'
"Plug 'skwp/vim-rspec'
Plug '~/Work/vimdev/vim-rspec'
Plug 'vim-ruby/vim-ruby'
Plug 'cakebaker/scss-syntax.vim'
Plug 'slim-template/vim-slim'
"Plug 'https://github.com/kennethzfeng/vim-raml'
"Plug 'derekwyatt/vim-scala', { 'ref': '16beb5378b487c2ddbdc9ed7241b145cd2df33f4' }
Plug 'unifieddialog/vim-rspec-focus', { 'ref': 'bfa0265b3c38e03ffda492b3d59b42efae569130' }
"Plug 'Glench/Vim-Jinja2-Syntax', { 'ref': '1d525a8cb4bcdc4311f42e8523467547e67aa983' }
"===> Themes
Plug 'altercation/vim-colors-solarized'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'telamon/vim-color-github'

call plug#end()

let mapleader = ","
syntax enable

"====== GUI setupping
"set t_Co=256
" set background=dark
"colorscheme hybrid_material
"color hybrid_material

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

let g:mix_test_runner = "os_x_iterm2"

map <Leader>t :call MixRunCurrentTestFile()<CR>
map <Leader>a :call MixRunAllTests()<CR>

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


func! ShowAwesomeComplete()
  call complete(col('.'), ['this', 'another'])
  return ''
endfunc

inoremap <F2> <C-R>=ShowAwesomeComplete()<CR>

"====== Colorcolumn
set colorcolumn=100
" END Colorcolumn

"====== Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_ruby_checkers          = ['rubocop']
"let g:syntastic_enable_signs=1
" END Syntastic settings
"
nmap <silent> <C-l> <Plug>(jsdoc)

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
