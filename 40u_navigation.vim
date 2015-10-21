"== 60 Nerdtree
    " Store the bookmarks file
        let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
    " Highlight the selected entry in the tree
        let NERDTreeHighlightCursorline=1
    " Don't display these kinds of files
        let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]
