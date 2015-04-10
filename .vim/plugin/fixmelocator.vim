
" NOTE: You must have python with simplejson in your path
"
" Location of fixmelocator utility, change in vimrc i different
if !exists("g:fixmelocator")
  let g:fixmelocator="grep -Hn "
endif

function! s:TOKENLocator(cmd, token, args)
  redraw
  " If no file is provided, use current file
  if empty(a:args)
    let l:fileargs = expand("%")
  else
    let l:fileargs = a:args
  end

  let grepprg_bak=&grepprg
  let grepformat_bak=&grepformat
  try
    let &grepprg=g:fixmelocator . " " . a:token
    let &grepformat="%f:%l:%m"
    let cmdline = [a:cmd]
    call add(cmdline, l:fileargs)
    silent execute join(cmdline)
  finally
    let &grepprg=grepprg_bak
    let &grepformat=grepformat_bak
  endtry

  if len(getqflist()) > 0

    " has errors display quickfix win
    botright copen

    " close quickfix
    exec "nnoremap <silent> <buffer> q :ccl<CR>"

    " open in a new window
    exec "nnoremap <silent> <buffer> o <C-W><CR>"

    " preview
    exec "nnoremap <silent> <buffer> go <CR><C-W><C-W>"

    redraw!
  else

    " no error, sweet!
    cclose
    redraw!
    echo "FIXME Locator: FIXME Free"

  end
endfunction

command! -bang -nargs=* -complete=file FIXME call s:TOKENLocator('grep<bang>',"FIXME",<q-args>)
command! -bang -nargs=* -complete=file TODO call s:TOKENLocator('grep<bang>',"TODO",<q-args>)
