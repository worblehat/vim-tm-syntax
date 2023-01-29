" Vim syntax file
" Language:     tm
" Maintainer:   Tobias Marquardt
" Filenames:    *.tm
" Last Change:  2023 Jan 29

if exists("b:current_syntax")
  finish
endif

sy match tmHeading "^#\+ .*$"
sy match tmNote "\(^\|\s\)\(NOTE\|TODO\|FIXME\):\?\($\|\s\)"
sy match tmURI "\(https\?\|ftp\)://\S\{2,\}\.\S\+"
sy match tmOption "<\S\+>"
sy match tmUnorderedListItem "^\s*\(*\|-\)\s" contains=tmNote,tmURI,tmOption,tmHighlight
sy match tmOrderedListItem "^\s*\d\+\.\s" contains=tmNote,tmURI,tmOption,tmHighlight
sy region tmHighlight matchgroup=tmHighlightDelimiter start="\*\S\@=" end="\S\@<=\*" oneline
sy region tmCodeBlock matchgroup=tmCodeBlockDelimiter start="^\s*>\s" end="$" oneline
  \ contains=tmURI,tmOption

hi def link tmHeading Title
hi def link tmNote Todo
hi def link tmURI Underlined
hi def link tmOption Comment
hi def link tmHighlight Todo
hi def link tmHighlightDelimiter Comment
hi def link tmUnorderedListItem Comment
hi def link tmOrderedListItem Comment
hi def link tmCodeBlock Statement
hi def link tmCodeBlockDelimiter Comment

let b:current_syntax = "tm"

