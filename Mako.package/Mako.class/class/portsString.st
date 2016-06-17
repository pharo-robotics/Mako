strings
portsString
	^ String
		streamContents: [ :str | 
			str nextPutAll: '{ '.
			self metaports do: [ :port | str nextPutAll: port definitionString ] separatedBy: [ str nextPutAll: '. ', String crlf ].
			str nextPutAll: ' }' ]