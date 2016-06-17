printing
instanceVariablesString
	"Answer a string of my instance variable names separated by spaces."

	^ String
		streamContents: [ :stream | 
			(self instVarNames reject: [ :n | self allMetaports anySatisfy: [ :p | p name = n ] ])
				do: [ :each | stream nextPutAll: each ]
				separatedBy: [ stream space ] ]