converting
associationDefinitionString
	^ self isBlocking
		ifTrue:
			[ String
				streamContents: [ :aStream | 
					aStream << '(#' << self name
						<< ' => ';
						<< self portClass name;
						<< ') blocking' ] ]
		ifFalse: [ super definitionString ]