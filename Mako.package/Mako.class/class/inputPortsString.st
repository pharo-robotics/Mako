strings
inputPortsString
	^ String
		streamContents: [ :str | 
			str nextPutAll: '{ '.
			(self metaports select: #isInput) do: [ :port | str nextPutAll: port definitionString ] separatedBy: [ str nextPutAll: '. ' , String crlf ].
			str nextPutAll: ' }' ]