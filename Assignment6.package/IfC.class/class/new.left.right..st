instance creation
new: newCond left: newLeft right: newRight
	"create a new if statement with the 3 required parameters"

	| newIf |
	newIf := self new.
	newIf setCond: newCond.
	newIf setLeft: newLeft.
	newIf setRight: newRight.
	^newIf