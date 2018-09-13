component creation
component: aSubclassSymbol input: anInputCollection output: anOutputCollection onSync: aSymbol instanceVariableNames: instVarNames classVariableNames: classVarNames category: aCategorySymbol
	| class |
	aSubclassSymbol
		asClassIfPresent: [ aSubclassSymbol asClass superclass = self
				ifTrue: [ self installSyncMessage: aSymbol into: aSubclassSymbol asClass ] ].
	class := self
		component: aSubclassSymbol
		ports: anInputCollection , anOutputCollection
		instanceVariableNames: instVarNames
		classVariableNames: classVarNames
		category: aCategorySymbol.
	self installSyncMessage: aSymbol into: class.
	^ class