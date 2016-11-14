if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal foldmethod=expr
setlocal foldexpr=DlangUnitTestFold(v:lnum)

function! DlangUnitTestFold(lnum)
  if getline(a:lnum) =~ '^\s*unittest\s*{*\s*$'
    return "a1"
  elseif getline(a:lnum) =~ '^\s*}\s*$'
    return "s1"
  else
    return "="
  endif
endfunction
