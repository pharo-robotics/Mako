component creation
component: aSubclassSymbol input: anInputCollection output: anOutputCollection instanceVariableNames: instVarNames classVariableNames: classVarNames category: aCategorySymbol
	^ self
		component: aSubclassSymbol
		ports: anInputCollection , anOutputCollection
		instanceVariableNames: instVarNames
		classVariableNames: classVarNames
		category: aCategorySymbol