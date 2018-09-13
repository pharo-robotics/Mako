tests
testTrackerHasTwoValuesTheFirstlyGivenAndTheAccumulation
	| fg sg |
	numberGenerator sync.
	accumulator sync.
	tracker sync.
	fg := numberGenerator lastGeneratedNumber.
	numberGenerator sync.
	accumulator sync.
	tracker sync.
	sg := numberGenerator lastGeneratedNumber.
	self assert: tracker size equals: 2.
	self assert: (tracker trackedValues at: 2) equals: fg + sg