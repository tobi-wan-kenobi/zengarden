function! zengarden#hls_show()
  set hlsearch
  call ZengardenHlsShowCursor()
endfunction

function! zengarden#hls_hide()
  set nohlsearch
  call ZengardenHlsHideCursor()
endfunction

function! zengarden#hls_toggle()
  if &hlsearch
    call zengarden#hls_hide()
  else
    call zengarden#hls_show()
  endif
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
