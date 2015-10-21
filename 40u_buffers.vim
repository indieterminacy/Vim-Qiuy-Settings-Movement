" Originally allows hidden buffers to stay unsaved
" = Break
" We do not want this, so comment it out:
    " set hidden
    "set wmh=0
" A buffer becomes hidden when it is abandoned
" set hid
"== Quickfix
    let g:quickfix_is_open = 0
    function! s:QuickfixToggle()
        if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
    let g:quickfix_return_to_window = winnr()
        copen
    let g:quickfix_is_open = 1
    endif
    endfunction
