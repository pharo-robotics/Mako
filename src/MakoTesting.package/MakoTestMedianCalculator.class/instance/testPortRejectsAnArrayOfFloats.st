as yet unclassified
testPortRejectsAnArrayOfFloats
	self
		should: [ (calculator port: #incoming) value: {2.0. 2.2. } ]
		raise: MakoError