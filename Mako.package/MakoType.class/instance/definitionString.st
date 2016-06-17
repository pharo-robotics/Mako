printing
definitionString
	^ (self isCollection
		ifTrue: [ '{' , typeName , '}' ]
		ifFalse: [ typeName ]) asSymbol