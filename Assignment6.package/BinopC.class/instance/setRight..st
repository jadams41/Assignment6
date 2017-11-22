initialization
setRight: newRight
	"sets the right expression of the binary operation statement"

	(newRight isKindOf: ExprC)
		ifTrue: [ right := newRight ]
		ifFalse: [ ^self error: 'UIRE: tried setting right part of ifC to non expression type' ].