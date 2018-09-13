accessing
metaportNamed: aPortName
	^ self allMetaports detect: [ :p | p name = aPortName ]