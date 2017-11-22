initialization
setArg: newArg
	"sets the arguments of the lamC statement"

	(newArg isKindOf: Symbol)
		ifTrue: [ arg := newArg ]
		ifFalse: [ ^self error: 'UIRE: tried setting arguments of lamC statement to non symbol type' ].