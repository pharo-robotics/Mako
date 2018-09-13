convenience
sync
	incoming value ifNotNil: [ :val | outgoing value: val sum / val size ]