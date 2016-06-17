as yet unclassified
testRouteDoesNotRespondsToMessageSendWhenDifferentPort
	self assert: portFrom value equals: nil.
	self assert: portTo value equals: nil.
	route noteWrittenPort: portTo newValue: 3.
	self assert: portFrom value equals: nil.
	self assert: portTo value equals: nil.

	