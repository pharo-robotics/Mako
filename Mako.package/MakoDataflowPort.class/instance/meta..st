accessing
meta: aMetaPort
	super meta: aMetaPort.
	value := TKTSharedFixedSizeQueue size: aMetaPort size.
	value blocking: aMetaPort isBlocking.
	