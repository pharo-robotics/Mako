component creation
component: aSubclassSymbol input: anInputCollection output: anOutputCollection instanceVariableNames: instVarNames classVariableNames: classVarNames category: aCategorySymbol
	| class ports |
	ports := anInputCollection , anOutputCollection.
	aSubclassSymbol
		asClassIfPresent: [ aSubclassSymbol asClass superclass = self
				ifTrue: [ self installMetaports: ports into: aSubclassSymbol asClass ] ].
	class := self
		subclass: aSubclassSymbol
		instanceVariableNames: (ports inject: instVarNames into: [ :acc :port | acc , ' ' , port name ])
		classVariableNames: classVarNames
		category: aCategorySymbol.
	self installMetaports: ports into: class.
	^ class