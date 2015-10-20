"= 30 Display
    " highlight the searchterms
        set hlsearch
"= 40 Movement
"== 40 Orientation
    " jump to the matches while typing
        set incsearch
    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
        if has("autocmd")
            au BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \ exe "normal! g'\"" |
            \ endif
        endif
"= 60 System
"== 40 Search By Regex
    " Do case insensitive matching
    " ignore case while searching
        set ignorecase
    " Incremental search
        "set incsearch
    " Do smart case matching
        "set smartcase
"=== 60 WildMode
    " command <Tab> completion, list matches, then longest common part, then
    " all.
        set wildmode=list:longest,full
"=== 60 WhichWrap
    " backspace and cursor keys wrap
        set whichwrap=b,s,h,l,<,>,[,]
"=== 60 Wildmenu
    "enable ctrl-n and ctrl-p to scroll thru matches
        set wildmenu
"=== 60 WildIgnore
    set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
    set wildignore+=*vim/backups*
    set wildignore+=*sass-cache*
    set wildignore+=*DS_Store*
    set wildignore+=vendor/rails/**
    set wildignore+=vendor/cache/**
    set wildignore+=*.gem
    set wildignore+=log/**
    set wildignore+=tmp/**
    set wildignore+=*.png,*.jpg,*.gifto
    set wildignore+=*.swp,*.bak,*.pyc,*.class,*.o,*~,.git\*,.hg\*,.svn\*
"== 60 Search Tools
"=== 60 Ag - The Silver Searcher
    " Use The Silver Searcher over Grep, if possible
		if executable('ag')
		" Use Ag over Grep
			set grepprg=ag\ --nogroup\ --nocolor
		" Use ag in CtrlP for listing files
		" Lightning fast and respects .gitignore
		" E706: Variable type mismatch for: g:ctrlp_user_command
		"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
		" ag is fast enough that CtrlP doesn't need to cache
			" let g:ctrlp_use_caching = 0
		endif
    " Define "Ag" command
    " Seemingly the command already exists. To investigate oneday
        command -nargs=+ -complete=file -bar Ag silent! grep! <args> | cwindow | redraw! "
