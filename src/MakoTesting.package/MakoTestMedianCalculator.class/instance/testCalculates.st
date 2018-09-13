as yet unclassified
testCalculates
	(calculator port: #incoming) value: {3. 3. 3. 3. 3. }.
	calculator sync.
	self assert: (calculator port: #outgoing) value equals: 3.
	calculator sync.
	self assert: (calculator port: #outgoing) value isNil