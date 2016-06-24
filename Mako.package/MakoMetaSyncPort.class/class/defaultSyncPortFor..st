as yet unclassified
defaultSyncPortFor: aSymbol
	^ (self named: #sync for: MakoSyncPort)
		onSync: aSymbol;
		yourself