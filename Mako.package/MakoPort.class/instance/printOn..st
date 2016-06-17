printing
printOn: aStream
	^ ('#{1}' format: {(meta name)}) printOn: aStream