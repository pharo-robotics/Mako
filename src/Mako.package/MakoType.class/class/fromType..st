as yet unclassified
fromType: aType
	| type |
	type := self new.
	(aType first = ${ and: [ aType last = $} ])
		ifTrue:
			[ type isCollection: true.
			type typeName: (aType copyFrom: 2 to: aType size - 1) ]
		ifFalse: [ type isCollection: false.
			type typeName: aType ].
	^ type