"
Data for SmartTest tests on the testForAnInstanceVariable:.

Methods of this class have long name in order to be unique and explicit.
Being unique, the senders of each method are mastered and consequently the tests are independent the one from the others.

We will use this that to assert that SmartTest behaves correctly when dealing with modifications on instance variables.

This class has an instance variable used inside the class in a test.
"
Class {
	#name : #SmTClassP1ModificationOnVariableInsideClassTest,
	#superclass : #TestCase,
	#instVars : [
		'instVarModificationOnVariableInsideClass'
	],
	#category : 'SmartTestDataOutsideP1-ModificationOnVariable-Tests'
}

{ #category : #accessing }
SmTClassP1ModificationOnVariableInsideClassTest >> instVarModificationOnVariableInsideClass [
	^ instVarModificationOnVariableInsideClass
]

{ #category : #accessing }
SmTClassP1ModificationOnVariableInsideClassTest >> instVarModificationOnVariableInsideClass: anObject [
	instVarModificationOnVariableInsideClass := anObject
]

{ #category : #tests }
SmTClassP1ModificationOnVariableInsideClassTest >> testModificationOnVariableInsideClass [
|anObject|
anObject := ('SmTClassP1ModificationOn','VariableInsideClassTest') asClass new.
anObject instVarModificationOnVariableInsideClass
]
