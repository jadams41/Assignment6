instance creation 
new: newOp left: newLeft right: newRight
	"create a new binary operation statement with 3 required parameters"
	
	| newBinop |
	newBinop := self new.
	newBinop setOp: newOp.
	newBinop setLeft: newLeft.
	newBinop setRight: newRight.
	^newBinop