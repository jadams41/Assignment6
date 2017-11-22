initialization
setLeft: newLeft
	"sets the left expression of the binary operation statement"

	(newLeft isKindOf: ExprC)
		ifTrue: [ left := newLeft ]
		ifFalse: [ ^self error: 'UIRE: tried setting left part of binopC to non expression type' ].