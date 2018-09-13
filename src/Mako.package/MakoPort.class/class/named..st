as yet unclassified
named: aPortName
	self = MakoPort
		ifTrue: [ self error: 'MakoPort is an abstract kind of port ' ].
	^ self metaclass named: aPortName for: self