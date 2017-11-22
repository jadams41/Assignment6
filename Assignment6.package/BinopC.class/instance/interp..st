as yet unclassified
interp
	"evaluates a binary operator depending on the operation"
	
	(op == #+)
		ifTrue: [ ^left interp ] + [ ^right interp]
	(op == #-)
		ifTrue: [ ^left interp ] - [ ^right interp]
	(op == #*)
		ifTrue: [ ^left interp ] * [ ^right interp]
	(op == #/)
		ifTrue: [ ^left interp ] / [ ^right interp]
		ifFalse: [ ^self error: 'UIRE: Invalid binary operation in interp' ].