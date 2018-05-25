if exists("b:current_syntax")
    finish
endif

syn keyword wyvKeyword import var val new resource this delegate to require metadata module comprises extends if then else objtype as instantiate tagged match default case of

syn keyword wyvKeyword def nextgroup=wyvFunction skipwhite
syn keyword wyvKeyword type nextgroup=wyvTypeDef skipwhite

syn match wyvFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match wyvTypeDef "[a-zA-Z]\+" contained

syn match wyvNumber '\<[+-]\=\d\+\>'

syn match wyvComment '\/\/.*'
syn region wyvComment start="/\*" end="\*/" extend

syn keyword wyvBool true false

syn match wyvColon ":" nextgroup=wyvType skipwhite

syn keyword wyvType Int Dyn String Unit Boolean
syn match wyvType "[A-Z][a-zA-Z0-9.]*" contained



hi def link wyvKeyword Keyword
hi def link wyvBool Boolean
hi def link wyvType Type
hi def link wyvFunction Function
hi def link wyvNumber Number
hi def link wyvComment Comment
hi def link wyvTypeDef Identifier

let b:current_syntax = "wyvern"
