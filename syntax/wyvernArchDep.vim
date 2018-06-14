if exists("b:current_syntax")
	finish
endif

syn keyword wyvArchKeyword deployment extends platform init if run type def

syn keyword wyvArchKeyword def nextgroup=wyvFunction skipwhite

syn keyword wyvArchKeyword type nextgroup=wyvTypeDef skipwhite

syn match wyvFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match wyvTypeDef "[a-zA-Z]\+" contained

syn match wyvComment '\/\/.*'
syn region wyvComment start="/\*" end="\*/" extend

syn region wyvString start="['"]" end='['"]' extend

syn match wyvColon ":" nextgroup=wyvType skipwhite
syn keyword wyvType Int Float Dyn String Unit Boolean Option List Map Char
syn match wyvType "[A-Z][a-zA-Z0-9.]*" contained


hi def link wyvString String
hi def link wyvChar Character
hi def link wyvArchKeyword Keyword
hi def link wyvType Type
hi def link wyvFunction Function
hi def link wyvComment Comment
hi def link wyvTypeDef Identifier

let b_current_syntax = "wyvernArchDep"
