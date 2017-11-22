instance creation 
left: newLeft right: newRight
	"create a new binary operation statement with 2 required parameters"
	
	| newEqualC |
	newEqualC := self new.
	newEqualC setLeft: newLeft.
	newEqualC setRight: newRight.
	^newEqualC