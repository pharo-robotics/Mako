testing
isCompatibleWith: anOtherPort
	^ (self privateIsCompatibleWith: anOtherPort)
		and: [ anOtherPort privateIsCompatibleWith: self ]