tests
testAccumulatorIs0
	accumulator sync.
	self assert: (accumulator port: #outgoing) value equals: 0