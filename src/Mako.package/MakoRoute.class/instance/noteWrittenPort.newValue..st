event-handling
noteWrittenPort: aPort newValue: aNewValue
	(from port: fromPort) = aPort
		ifTrue: [ (to port: toPort) value: aNewValue ]