as yet unclassified
testValueWriteDoesAnnounce
	1 to: 2000 do: [ :i | 
		port value: i.
		self assert: port equals: writtenPort.
		self assert: newValue equals: i ]