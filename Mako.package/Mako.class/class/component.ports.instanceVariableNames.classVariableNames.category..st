component creation
component: aSubclassSymbol ports: aCollection instanceVariableNames: instVarNames classVariableNames: classVarNames category: aCategorySymbol
	| class |
	aSubclassSymbol
		asClassIfPresent: [ 
			aSubclassSymbol asClass superclass = self
				ifTrue: [ self installMetaports: aCollection into: aSubclassSymbol asClass ] ].
	class := self
		subclass: aSubclassSymbol
		instanceVariableNames: (aCollection inject: instVarNames into: [ :acc :port | acc , ' ' , port name ])
		classVariableNames: classVarNames
		category: aCategorySymbol.
	self installMetaports: aCollection into: class.
	^ class