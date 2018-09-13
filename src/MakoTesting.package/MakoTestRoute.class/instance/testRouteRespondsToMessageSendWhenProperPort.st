as yet unclassified
testRouteRespondsToMessageSendWhenProperPort
	self assert: portTo value equals: nil.
	route noteWrittenPort: portFrom newValue: 3.
	self assert: portTo value equals: 3.

	