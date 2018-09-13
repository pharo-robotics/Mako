as yet unclassified
testRoutingNotTransitsAFloat
	self should: [ portFrom value: 2.3 ] raise: MakoError.
	self assert: portTo value equals: nil