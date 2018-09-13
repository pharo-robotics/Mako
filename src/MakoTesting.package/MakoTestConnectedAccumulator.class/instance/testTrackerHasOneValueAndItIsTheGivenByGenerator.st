tests
testTrackerHasOneValueAndItIsTheGivenByGenerator
	self assert: tracker size equals: 0.
	numberGenerator sync.
	accumulator sync.
	tracker sync.
	self assert: tracker size equals: 1.
	self assert: (tracker trackedValues at: 1) equals: numberGenerator lastGeneratedNumber