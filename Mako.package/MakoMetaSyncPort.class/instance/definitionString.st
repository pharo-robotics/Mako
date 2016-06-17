printing
definitionString
	^ String
		streamContents: [ :aStream | 
			aStream
				<< super definitionString;
				<< ' onSync: ';
				store: self onSync definitionString ]