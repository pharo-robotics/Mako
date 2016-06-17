tests
testTrackerHasOneValueAndItIs0AfterAccumulatorSyncsWithoutValue
	accumulator sync.
	tracker sync.
	self assert: tracker size equals: 1.
	self assert: (tracker trackedValues at: 1) equals: 0