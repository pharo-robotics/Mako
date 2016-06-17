accessing
portsInComponent: aComponent
	^ self allMetaports collect: [ :metaport | metaport inComponent: aComponent ]