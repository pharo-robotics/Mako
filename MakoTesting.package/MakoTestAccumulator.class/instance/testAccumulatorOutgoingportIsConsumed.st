as yet unclassified
testAccumulatorOutgoingportIsConsumed
	accumulator sync.
	self assert: (accumulator port: #outgoing) value equals: 0.
	self assert: (accumulator port: #outgoing) value equals: nil