" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
"== VIM User Interface
    " Set x lines to the cursor - when moving vertically using j/k
	"Start scrolling when we're 8 lines away from margins
	    set scrolloff=8
	set sidescrolloff=15
	set sidescroll=6" " Turn on the WiLd menu
	" Return to last edit position when opening files (You want this!)
        autocmd BufReadPost *
              \ if line("'\"") > 0 && line("'\"") <= line("$") |
              \ exe "normal! g`\"" |
              \ endif
	" Remember info about open buffers on close
        set viminfo^=%
	" When wrapping paragraphs, don't end lines with 1-letter words
	" (looks stupid)
        set formatoptions+=1
