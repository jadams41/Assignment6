parsing
parse: a 
	"will take an array of numbers, booleans and strings representing language forms and will return an expression tree (exprC)"
	
	| firstArrSym |
	(a isNumber)
		ifTrue: [ ^NumC new: a ].
	(a == true or: [ a == false ])
		ifTrue: [ ^BoolC new: a ].
	(a isArray)
		ifTrue: [ (a size <= 0)
			ifTrue: [ ^self error: 'UIRE: cant parse empty array' ]
			ifFalse: [ 
				firstArrSym := a at: 1. 
				(firstArrSym = 'if')
					ifTrue: [ (a size == 4)
						ifFalse: [ ^self error: 'UIRE: if expression needs exactly 3 subsequent arguments' ]
						ifTrue: [ ^IfC new: (UIRE3 parse: (a at: 2)) left: (UIRE3 parse: (a at: 3)) right: (UIRE3 parse: (a at: 4)) ]
						 ]
				(firstArrSym = 'equal?')
					ifTrue: [ (a size == 3)
						ifFalse: [ ^self error: 'UIRE: equal? expression needs exactly 2 subsequent arguments' ]
						ifTrue: [ ^EqualC left: (UIRE3 parse: (a at: 2)) right: (UIRE3 parse: (a at: 3) ]
				(firstArrSym = 'lamC')
					ifTrue: [ a size == 3)
						ifFalse: [ ^self error: 'UIRE: lamC expression needs exactly 2 subsequent arguments' ]
						ifTrue: [ ^LamC arg: (UIRE3 parse: (a at: 2)) function: (UIRE3 parse: (a at: 3) ]
				((#(+ - * /) includes firstArrSym)
					ifTrue: [ (a size == 3)
						ifFalse: [ ^self error: 'UIRE: binop expression needs exactly 2 subsequent arguments' ]
						ifTrue: [ ^BinopC new: firstArrSym left: (UIRE3 parse: (a at: 2)) right: (UIRE3 parse: (a at: 3)) ]
						] ] ] .
			
	^self error: 'unrecognized type passed to parse'