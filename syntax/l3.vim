" vim sytax file
" Language: L3
" (c) Alexandre Joannou, University of Cambridge

if exists("b:current_syntax")
    finish
endif

" L3 primitive types
syntax keyword  l3PrimitiveTypes unit bool char string nat int bits rounding 
" L3 nullary
syntax keyword  l3Nullary false true Nil
syntax keyword  l3Nullary roundTiesToEven roundTowarPositive roundTowardNegative roundTowardZero
" L3 operators
syntax match	l3Operators	'**'
syntax match	l3Operators	'='
syntax match    l3Operators '[=]\{2}'
syntax match	l3Operators	'<'
syntax match	l3Operators	'>'
syntax match	l3Operators	'<>'
syntax match	l3Operators	'!='
syntax match	l3Operators	'<-'
syntax match    l3Operators '-'
syntax match	l3Operators	'->'
syntax match	l3Operators	'<='
syntax match	l3Operators	'>='
syntax match	l3Operators	'=>'
syntax match	l3Operators	'<+'
syntax match	l3Operators	'<=+'
syntax match	l3Operators	'>+'
syntax match	l3Operators	'>=+'
syntax match	l3Operators	'\<div\>'
syntax match	l3Operators	'\<mod\>'
syntax match	l3Operators	'\<quot\>'
syntax match	l3Operators	'\<rem\>'
syntax match	l3Operators	'<<'
syntax match	l3Operators	'>>'
syntax match	l3Operators	'>>+'
syntax match	l3Operators	'#<<'
syntax match	l3Operators	'#>>'
syntax match	l3Operators	'&&'
syntax match	l3Operators	'||'
syntax match	l3Operators	'??'
syntax match    l3Operators '!'
syntax match    l3Operators '[~]'
syntax match	l3Operators	','
syntax match	l3Operators	'*'
syntax match	l3Operators	'\^'
syntax match	l3Operators	'+'
syntax match	l3Operators	'&'
syntax match	l3Operators	'\.'
syntax match	l3Operators	'\.\.'
syntax match	l3Operators	'\<in\>'
syntax match	l3Operators	'\<notin\>'
syntax match	l3Operators	'\<not\>'
syntax match	l3Operators	'\<and\>'
syntax match	l3Operators	'\<or\>'
" L3 functions
syntax match	l3Functions	';'
syntax match	l3Functions	':'
syntax match	l3Functions	'`'
syntax match	l3Functions	'@'
syntax keyword  l3Functions InitMap None
syntax keyword  l3Functions insert Log2 Min Max SignedMin SignedMax Abs
syntax keyword  l3Functions Size ZeroExtend SignExtend Reverse Msb Fst Snd
syntax keyword  l3Functions SetOfList Some ValOf IsSome Cons Head Tail Length
syntax keyword  l3Functions fpNeg32 fpAdd32 fpSub32 fpMul32
syntax keyword  l3Functions fpNeg64 fpAdd64 fpSub64 fpMul64
syntax keyword  l3Functions Union Intersect Difference IsSubset Cardinality Element Concat
syntax keyword  l3Functions Take Drop Update Remove RemoveExcept RemoveDuplicates IsMember IndexOf
syntax keyword  l3Functions IsAlpha IsAlphaNum IsDigit IsHexDigit IsLower IsUpper
syntax keyword  l3Functions FromBinString FromDecString FromHexString ToLower ToUpper
syntax keyword  l3Functions splitl splitr fields tokens
" L3 keywords
syntax keyword  l3Keywords assign case clear component construct declare define
syntax keyword  l3Keywords do else exception for foreach if list match nothing
syntax keyword  l3Keywords pattern patterns record register return set then
syntax keyword  l3Keywords type var when RAO! RAZ! UNK! UNKNOWN
" L3 constructors
"syntax match    l3Constructors      '\*'
"syntax match    l3Constructors      '->'
syntax keyword  l3Constructors    set option list
" L3 specials
syntax match   l3Specials '::'
syntax match   l3Specials '{'
syntax match   l3Specials '}'
syntax match   l3Specials '('
syntax match   l3Specials ')'
syntax match   l3Specials '\['
syntax match   l3Specials '\]'
" L3 strings
syntax region   l3Strings start=/"/ skip=/\\./ end=/"/
" L3 bitstrings
syntax match    l3BitStrings /'[01][01_]*'/
" L3 number
syntax match    l3Numbers '\<[0-9][0-9_]*\>'
syntax match    l3Numbers '\<0[nisw]*[0-9][0-9_]*\>'
syntax match    l3Numbers '\<0[nisw]*d[0-9][0-9_]*\>'
syntax match    l3Numbers '\<0[nisw]*b[01][01_]*\>'
syntax match    l3Numbers '\<0[nisw]*x[0-9a-fA-F][0-9a-fA-F_]*\>'
" L3 todo and comments
syntax keyword l3Todo contained TODO FIXME XXX NOTE
syntax match  l3Comments "--.*$" contains=l3Todo
syntax region l3Comments start="{-" end="-}" contains=l3Todo


let b:current_syntax = "l3"

highlight   link    l3Strings               String
highlight   link    l3BitStrings            Constant
highlight   link    l3Numbers               Number
highlight   link    l3PrimitiveTypes        Type
highlight   link    l3Constructors          Type
highlight   link    l3Nullary               Type
highlight   link    l3Operators             Operator
highlight   link    l3Functions             Function
highlight   link    l3Keywords              Keyword
highlight   link    l3Specials              Special
highlight   link    l3Todo                  Todo
highlight   link    l3Comments              Comment
