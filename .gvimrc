set background=light

if !exists("*ReloadVimRc")
  function ReloadVimRc()
    :source $MYVIMRC
    :source ~/.gvimrc
  endfunction
endif

" Reload vimr configuration file
nunmap <Leader>vr
nnoremap <Leader>vr :call ReloadVimRc()<CR>
