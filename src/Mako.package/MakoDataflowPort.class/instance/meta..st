accessing
meta: aMetaPort
	super meta: aMetaPort.
	value := MakoSharedFixedSizeQueue size: aMetaPort size.
	value blocking: aMetaPort isBlocking.
	