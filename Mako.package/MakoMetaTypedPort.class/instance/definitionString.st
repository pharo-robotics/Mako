printing
definitionString
	^ String
		streamContents: [ :aStream | 
			aStream
				<< self associationDefinitionString;
				<< (size > 1 ifTrue: [' size: ', self size asString] ifFalse:['']);
				<< ' type: ';
				store: self type definitionString ]