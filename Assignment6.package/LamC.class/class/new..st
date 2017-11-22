instance creation
arg: newArg function: newFunction
	"create a new lambda function"
	
	| newLamC |
	newLamC := self new.
	newLamC setArg: newArg.
	newLamC setFunction: newFunction.
	^newLamC