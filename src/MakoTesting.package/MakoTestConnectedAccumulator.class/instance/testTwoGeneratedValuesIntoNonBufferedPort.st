tests
testTwoGeneratedValuesIntoNonBufferedPort
	| fg sg |
	numberGenerator sync.
	fg := numberGenerator lastGeneratedNumber.
	numberGenerator sync.
	sg := numberGenerator lastGeneratedNumber.
	accumulator sync.
	tracker sync.
	accumulator sync.
	tracker sync.
	self assert: tracker size equals: 2.
	self assert: (tracker trackedValues at: 1) equals: sg.
	self assert: (tracker trackedValues at: 2) equals: sg.
	self deny: sg equals: fg