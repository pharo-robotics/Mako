instance creation
createPortFor: aComponent
	^ self createPort
		component: aComponent;
		yourself