as yet unclassified
testAccumulatesZeroByDefault
	accumulator sync.
	self assert: (accumulator port: #outgoing) value equals: 0