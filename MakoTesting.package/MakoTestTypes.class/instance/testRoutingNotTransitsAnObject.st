as yet unclassified
testRoutingNotTransitsAnObject
	self should: [ portFrom value: Object new ] raise: MakoError.
	self assert: portTo value equals: nil