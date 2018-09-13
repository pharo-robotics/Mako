strings
outputPortsString
	^ String
		streamContents: [ :str | 
			str nextPutAll: '{ '.
			(self metaports select: #isOutput) do: [ :port | str nextPutAll: port definitionString ] separatedBy: [ str nextPutAll: '. ' , String crlf ].
			str nextPutAll: ' }' ]