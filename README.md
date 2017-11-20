# Assignment6
CPE430 Assignment 6 (reimplementation of Assignment 3 in Smalltalk)

Currently working forms: numC, boolC, ifC

This can be typed into the workspace to demonstrate the current functionality:

```
Transcript clear.
"Here is the sample code used to demonstrate the current funcitonality of smalltalk UIRE3".

"parse can be considered a static method of the UIRE3 class"
num1 := UIRE3 parse: 1.
bool1 := UIRE3 parse: true.
if1 := UIRE3 parse: #('if' true 5 10).
if2 := UIRE3 parse: #('if' false 5 10).

"each ExprC type has its own interp method which top interp will call"
Transcript show: 'num1 has the value: '.
Transcript show: num1 interp.
Transcript cr.

Transcript show: 'bool1 has the value: '.
Transcript show: bool1 interp.
Transcript cr.

Transcript show: 'if1 has the value: '.
Transcript show: if1 interp.
Transcript cr.

Transcript show: 'if2 has the value: '.
Transcript show: if2 interp.
Transcript cr.

"demonstration of what happens if you try to pass non-boolean value to conditional portion of if"
brokenIf := UIRE3 parse: #('if' 3 3 3).
"it will still parse, but will throw an error when attempted to interp"
Transcript show: 'brokenIf has the value: '.
Transcript show: brokenIf interp.
Transcript cr.
```
