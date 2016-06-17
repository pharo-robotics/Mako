testing
isAValidValue: aValue
	^ self isCollection
		ifFalse: [ aValue isKindOf: typeName asClass ]
		ifTrue: [ aValue isCollection and: [ aValue allSatisfy: [ :d | d isKindOf: typeName asClass ] ] ]