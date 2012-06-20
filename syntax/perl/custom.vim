
"Highlight debug lines of code
syn match debugStatment  '^.*DEBUG.*$'
hi ColourSchemeDebug ctermfg=white ctermbg=red
hi def link debugStatment ColourSchemeDebug
