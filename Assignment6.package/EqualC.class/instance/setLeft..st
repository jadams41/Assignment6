initialization
setLeft: newLeft
	"sets the if true part of the if expression, makes sure that this is atleast an exprc first"

	(newLeft isKindOf: ExprC)
		ifTrue: [ left := newLeft ]
		ifFalse: [ ^self error: 'UIRE: tried setting left part of equalC to non expression type' ].