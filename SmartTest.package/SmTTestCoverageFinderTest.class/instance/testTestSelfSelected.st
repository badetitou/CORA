helpers
testTestSelfSelected
	<CORATestBlacklisted>
	| testsFound |
	testsFound := self testsForATestMethod: SmTClassTest >> #testMethod1.
	self assert: (testsFound includes: testMethod1).
	self deny: (testsFound includes: testMethod2).
	self deny: (testsFound includes: testMethod3).
	self deny: (testsFound includes: testMethod4)