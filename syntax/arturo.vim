if exists("b:current_syntax")
    finish
endif

" Library functions {{{
syntax keyword arturoLibArithmetic add dec div fdiv inc mod mul neg pow sub
syntax match arturoLibArithmeticAlias '\v\+|\/|\%|\*|\^|\-'
syntax keyword arturoLibBinary and nand nor not or shl shr xnor xor
syntax keyword arturoLibComparison equal? greater? greaterOrEqual? less? lessOrEqual? notEqual?
syntax match arturoLibComparisonAlias '\v\>\=|\=\<|\<\>|\=|\>|\<'
syntax keyword arturoLibConverters array as dictionary function to
syntax match arturoLibConvertersAlias '\v\@|\#|\$'
syntax keyword arturoLibCore break call case continue do else globalize if if? let new pop push return try try? until var when? while
syntax keyword arturoLibCrypto decode encode digest hash
syntax keyword arturoLibDatabase close query open
syntax keyword arturoLibDates now
syntax keyword arturoLibFiles exists? read unzip write zip
syntax keyword arturoLibIo clear input print prints
syntax keyword arturoLibIterators all? any? filter fold loop map select
syntax keyword arturoLibLogic and? false? nand? nor? not? or? true? xnor?
syntax keyword arturoLibNet download mail serve
syntax keyword arturoLibNumbers abs acos acosh asin asinh atan atanh average cos cosh csec csech ctan ctanh even? factors gcd median negative? odd? positive? prime? product random range sec sech sin sinh sqrt sum tan tanh zero?
syntax keyword arturoLibPath extract module relative
syntax keyword arturoLibReflection attr attr? attribute? attributeLabel? attrs benchmark binary? block? boolean? char? database? date? dictionary? help info inline? inspect integer? is? floating? function? label? literal? null? path? pathLabel? set? stack standalone? string? symbol? symbols type type? word?
syntax keyword arturoLibStrings capitalize color join levenshtein lower lower?  match numeric?  pad prefix prefix?  render replace strip suffix suffix?  upper upper?  whitespace?
syntax keyword arturoLibSystem execute exit list panic pause
syntax keyword arturoLibUi webview

" }}}

" Syntax {{{
syntax match arturoComment '\v;.*$'
syntax keyword arturoNull null
syntax keyword arturoBoolean true false
syntax match arturoInteger '\v\d+'
syntax match arturoFloating '\v\d+\.\d+'
syntax match arturoType '\v:[A-Za-z?]+'
syntax match arturoChar '\v`\\?.`'
syntax region arturoString start='\v"' skip='\v\\.' end='\v"'
syntax match arturoString '\v» .*$'
syntax match arturoLiteral "\v\'[A-Za-z?]"
syntax match arturoPathDelimiter '\v\\'
syntax match arturoAttributeDelimiter '\v\.'
syntax match arturoSyntacticSugar '\v\-\>|\=\>|\|'
" }}}

" Highlight links {{{
highlight link arturoComment Comment
highlight link arturoNull Constant
highlight link arturoBoolean Boolean
highlight link arturoInteger Number
highlight link arturoFloating Float
highlight link arturoType Type
highlight link arturoChar Character
highlight link arturoString String
highlight link arturoLiteral Special
highlight link arturoPathDelimiter Delimiter
highlight link arturoSyntacticSugar Keyword
highlight link arturoAttributeDelimiter Delimiter
highlight link arturoLibArithmetic Operator
highlight link arturoLibArithmeticAlias Operator
highlight link arturoLibBinary Operator
highlight link arturoLibComparison Operator
highlight link arturoLibComparisonAlias Operator
highlight link arturoLibConverters Keyword
highlight link arturoLibConvertersAlias Keyword
highlight link arturoLibCore Keyword
highlight link arturoLibCrypto Function
highlight link arturoLibDatabase Function
highlight link arturoLibDates Function
highlight link arturoLibFiles Function
highlight link arturoLibIo Function
highlight link arturoLibIterators Function
highlight link arturoLibLogic Operator
highlight link arturoLibNet Function
highlight link arturoLibNumbers Operator
highlight link arturoLibPath Function
highlight link arturoLibReflection Keyword
highlight link arturoLibStrings Function
highlight link arturoLibSystem Function
highlight link arturoLibUi Function
" }}}

let b:current_syntax = "arturo"