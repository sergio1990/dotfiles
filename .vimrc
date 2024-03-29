call plug#begin('~/.vim/plugged')
"===> Core
Plug 'scrooloose/nerdtree', { 'ref': 'cc60495' }
Plug 'marcweber/vim-addon-mw-utils', { 'ref': '295862b'}
Plug 'tomtom/tlib_vim', { 'ref': '70c4e222464020edc2809c932b488daaf891eeef' }
" Toggle the cursor shape in the terminal for Vim
Plug 'jszakmeister/vim-togglecursor', { 'ref': 'b1acd53' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"===> GUI & Themes
Plug 'vim-airline/vim-airline', { 'ref': 'c4a4a20' }
Plug 'morhetz/gruvbox', { 'ref': 'cb4e7a5643f7d2dd40e694bcbd28c4b89b185e86'}

"===> Tools
Plug 'w0rp/ale', { 'ref': '7ff87a942b8a6c2cf50b7cf34f9b98421508f542' }
Plug 'easymotion/vim-easymotion', { 'ref': '342549e' }
Plug 'garbas/vim-snipmate', { 'ref': 'a9802f2' }
Plug 'honza/vim-snippets', { 'ref': '0fc7fd1' }
Plug 'tpope/vim-fugitive', { 'ref': '286bf9096de0d74a5b663f2c6d4ae879ef97d93b' }
Plug 'michaeljsmith/vim-indent-object', { 'ref': '5c5b24c' }
Plug 'cyphactor/vim-open-alternate', { 'ref': '3dfc24e' }
Plug 'Raimondi/delimitMate', { 'ref': '728b57a6564c1d2bdfb9b9e0f2f8c5ba3d7e0c5c' }
" nerdcommenter and tcomment_vim are alternatives? Investigate the both and
" end up with only one.
Plug 'scrooloose/nerdcommenter', { 'ref': 'e679d8a' }
Plug 'tomtom/tcomment_vim', { 'ref': 'ed93a63' }
Plug 'tpope/vim-surround', { 'ref': 'e49d6c2' }
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'less', 'sass'], 'ref': 'afaacf5' }
Plug 'terryma/vim-multiple-cursors', { 'ref': 'b781b14' }
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab', { 'ref': '40fe711' }
" endwise.vim: wisely add `end` in ruby, endfunction/endif/more in vim script,
Plug 'tpope/vim-endwise', { 'ref': 'c714a26' }
" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch', { 'ref': '0971b4c' }
" A Narrow Region Plugin for vim (like Emacs Narrow Region)
Plug 'chrisbra/NrrwRgn', { 'ref': '9a87f0c' }
" Refactoring tool for Ruby in vim!
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby', 'ref': '6447a4d' }
" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim', { 'ref': 'b134bdb' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby', 'ref': '0087f99' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir', 'ref': 'd15033c' }
Plug 'chrisbra/csv.vim', { 'for': 'csv', 'ref': '14eb57c' }
Plug 'mileszs/ack.vim'
"===> Langs
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir', 'ref': 'e49da51' }
Plug 'jimenezrick/vimerl', { 'for': ['elixir', 'erlang'], 'ref': '536f7e2' }
Plug 'tpope/vim-git', { 'ref': 'cdb8554' }
Plug 'tpope/vim-haml', { 'for': 'haml', 'ref': 'd580aa3' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript', 'ref': '39e332a3c36c0115e1eab85c34cf121b7585869d' }
Plug 'elzr/vim-json', { 'for': 'json', 'ref': '3727f08' }
Plug 'groenewege/vim-less', { 'for': 'less', 'ref': '6e818d5' }
Plug 'tpope/vim-markdown', { 'for': 'markdown', 'ref': 'e2d7fcd' }
Plug 'shime/vim-livedown', { 'ref': '9a881c4ef7113df6d6f81830da8b07c0462ddbf9', 'for': 'markdown' }
Plug 'tpope/vim-rails', { 'for': 'ruby', 'ref': 'a3b6d49' }
Plug 'hallison/vim-rdoc', { 'for': 'ruby', 'ref': 'a433c97' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby', 'ref': '71f5df7' }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'], 'ref': '4461789' }
Plug 'slim-template/vim-slim', { 'for': ['slim'], 'ref': 'b19d372' }
Plug 'unifieddialog/vim-rspec-focus', { 'ref': 'bfa0265b3c38e03ffda492b3d59b42efae569130', 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby', 'ref': '1c57918086d22cc9db829125f6b78226feae86a3' }
Plug 'leafgarland/typescript-vim', { 'ref': 'db131b8cd42973ed26928e9e445c1a745a98cff8' }
Plug 'thoughtbot/vim-rspec', { 'ref': '52a72592b6128f4ef1557bc6e2e3eb014d8b2d38' }
call plug#end()

let mapleader = ","
syntax enable

" GUI setupping
if !has("gui_running")
  set term=xterm-256color
endif

set background=dark
set guifont=Inconsolata\ for\ Powerline:h12
set encoding=utf-8
set termencoding=utf-8

colorscheme gruvbox
color gruvbox

let g:airline_powerline_fonts = 1
let g:airline_theme = "gruvbox"

let g:gruvbox_contrast_dark = "medium"
let g:gruvbox_contrast_light = "soft"
" END GUI setupping

"====== Control NERDTree
nnoremap <Leader>n :NERDTreeToggle<cr>
nnoremap <Leader>nf :NERDTreeFind<cr>
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
set relativenumber

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
set colorcolumn=120
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

" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" The handy way to clear the highlighted searches
nmap <silent> ./ :nohlsearch<CR>

" vim-rspec-focus
nnoremap <leader>af :AddFocusTag<CR>
nnoremap <leader>raf :RemoveAllFocusTags<CR>

" Enable the JSDoc syntax highlighting
let g:javascript_plugin_jsdoc = 1

" ALE configuration
let g:ale_set_loclist = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
nmap gd :ALEGoToDefinition<CR>
nmap gds :ALEGoToDefinitionInSplit<CR>
nmap gdv :ALEGoToDefinitionInVSplit<CR>
let g:ale_linters = {
      \'javascript': ['eslint'],
      \'typescript': ['tslint']
      \}
let g:ale_linters_ignore = {
      \'typescript': ['eslint'],
      \'typescriptreact': ['eslint']
      \}



set exrc
set secure
set noswapfile
set dir=~/tmp

" Copy filename to clipboard
nnoremap <leader>cp :let @+=expand("%")<CR>
nnoremap <leader>cpl :let @+=expand("%") . ':' . line(".")<CR>

" fzf configuration
let g:fzf_command_prefix = 'Fzf'

nnoremap <silent><leader>o :FzfFiles<CR>
nnoremap <silent><leader>O :FzfFiles!<CR>
nnoremap <silent><leader>t :FzfBTags<CR>

if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" Mapping shortcut to search via the silver search
nnoremap <leader>F :Ack!<Space>

set tags+=.tags
" The ripper-tags executable is installed with this gem https://github.com/tmm1/ripper-tags
if executable('ripper-tags')
  nnoremap <leader>ctr :silent ! ripper-tags -R --exclude=vendor -f .tags<cr>
endif

let g:snipMate = { 'snippet_version' : 0 }
