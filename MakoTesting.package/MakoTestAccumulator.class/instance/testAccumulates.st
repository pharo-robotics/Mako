as yet unclassified
testAccumulates
	(accumulator port: #incoming) value: 1.
	accumulator sync.
	self assert: (accumulator port: #outgoing) value equals: 1.
	accumulator sync.
	self assert: (accumulator port: #outgoing) value equals: 1