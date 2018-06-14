if exists("b:current_syntax")
    finish
endif

syn keyword wyvArchKeyword and is with connect external val port requires provides

syn keyword wyvArchKeyword component connector architecture nextgroup=wyvTypeDef 
syn keyword wyvArchDecls components connectors attachments entryPoints

syn keyword wyvKeyword def nextgroup=wyvFunction skipwhite
syn keyword wyvKeyword type nextgroup=wyvTypeDef skipwhite

syn match wyvFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match wyvTypeDef "[a-zA-Z]\+" contained

syn match wyvComment '\/\/.*'
syn region wyvComment start="/\*" end="\*/" extend

syn match wyvColon ":" nextgroup=wyvType skipwhite

syn match wyvType "[a-zA-Z][a-zA-Z0-9.]*" contained

hi def link wyvType Type
hi def link wyvFunction Function
hi def link wyvComment Comment
hi def link wyvTypeDef Identifier
hi def link wyvArchDecls Constant
hi def link wyvArchKeyword Keyword

let b:current_syntax = "wyvernCnC"
