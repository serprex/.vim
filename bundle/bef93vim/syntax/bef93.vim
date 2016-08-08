setlocal colorcolumn=80
setlocal cursorcolumn
setlocal nu
setlocal expandtab
syn match befungeNumber '\d'
syn match befungeOperator '[+\-*/%`!:$\\,.~&pg]'
syn match befungeMovement '[<v>^#]'
syn match befungeLogic '[_|@"?]'
syn match befungeOther '[^0-9+\-*/%`\\!:$,.~&pg>v<^#_|@"?]'
hi def link befungeNumber Number
hi def link befungeOperator Operator
hi def link befungeMovement Identifier
hi def link befungeLogic Keyword
hi def link befungeOther Comment
