instance creation
createPortFor: aComponent
	^ self createPort
		component: aComponent;
		syncMessage: onSync;
		yourself