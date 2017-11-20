initialization
setCond: newCond
	"sets the conditional part of the if expression, makes sure that the if is atleast a exprc first"

	(newCond isKindOf: ExprC)
		ifTrue: [ cond := newCond ]
		ifFalse: [ ^self error: 'UIRE: tried setting condition of ifC to non expression type' ].