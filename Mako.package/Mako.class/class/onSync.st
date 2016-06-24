filein/out
onSync
	^ onSync ifNil: [ metaports detect: #isSync ifFound: [ :s | s onSync ] ifNone: [ nil ] ]