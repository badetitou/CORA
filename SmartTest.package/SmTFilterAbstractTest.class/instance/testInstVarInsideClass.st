tests
testInstVarInsideClass
"In this test we want to assert that if the modified class has subclasses, SmartTest finds all the inherited methods (implemented or not)"
	<CORATestBlacklisted>
	| testsFound aInstVar|
	aInstVar := self instanceVariableNamed: 'instVarModificationOnVariableInsideClass' fromClass: 'SmTClassP1ModificationOnVariable'.
	testsFound := self searchTestsForInstVar: aInstVar.
	self assert: (testsFound includes: ('SmTClassP1','ModificationOnVariable') asClass >> ('testModificationOnVariable','InsideClass')asSymbol).
	