as yet unclassified
interp
	"if the condition evaluates to true, then return the interpreted value of the left expression, otherwise the interpreted value of teh right expression"

	| interpedCond |
	interpedCond := cond interp.
	(interpedCond == true or: [ interpedCond == false ])
		ifFalse: [ ^self error: 'UIRE: illegal value passed to conditional part of if expression (must be boolean)' ].
	interpedCond 
		ifTrue: [ ^left interp ]
		ifFalse: [ ^right interp ].