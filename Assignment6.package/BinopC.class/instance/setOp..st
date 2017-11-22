initialization
setOp: newOp
	"sets the operator part of the binop expression"
	(#(+ - * /) includes newOp)
		ifTrue: [ op := newOp ]
		ifFalse: [ ^self error: 'UIRE: Invalid binary operator' ].