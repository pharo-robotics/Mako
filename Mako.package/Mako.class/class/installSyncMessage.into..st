as yet unclassified
installSyncMessage: aSymbol into: aSubclass
	aSubclass onSync: aSymbol.
	aSubclass class
		compile:
			('encodedSyncMessage {1} ^ #{2}.'
				format:
					{(String crlf , String tab).
					aSymbol})
		classified: 'component-private'