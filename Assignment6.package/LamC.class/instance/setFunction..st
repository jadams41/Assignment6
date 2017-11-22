initialization
setFunction: newFunction
	"sets the function of the lamC statement"

	(Function isKindOf: ExprC)
		ifTrue: [ function := newFunction ]
		ifFalse: [ ^self error: 'UIRE: tried setting function of lamC statement to non ExprC type' ].