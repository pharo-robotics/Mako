filein/out
onSync
	^ onSync ifNil: [ onSync := metaports detect: #isSync ifFound: [ :s | s onSync ] ifNone: [ self encodedSyncMessage ] ]