printing
definitionString
	^ String
		streamContents: [ :aStream | 
			aStream << '#' << self name
				<< ' => ';
				<< self portClass name ]