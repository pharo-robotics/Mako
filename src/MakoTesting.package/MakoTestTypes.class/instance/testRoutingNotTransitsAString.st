as yet unclassified
testRoutingNotTransitsAString
	self should: [ portFrom value: '' ] raise: MakoError.
	self assert: portTo value equals: nil