accessing
allMetaports
	^ (superclass == Mako
		ifTrue: [ {} ]
		ifFalse: [{} ]) , self metaports