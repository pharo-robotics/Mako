as yet unclassified
testPortRejectsAnArrayOfObjects
	self
		should: [ (calculator port: #incoming)
				value:
					{Object new.
					Object new} ]
		raise: MakoError