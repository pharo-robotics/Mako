as yet unclassified
doSync: aStamp
	privateVariableShouldSync
		ifTrue: [ self perform: privateVariableSymbolToSync withEnoughArguments: {aStamp} ]