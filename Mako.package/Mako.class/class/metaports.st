accessing
metaports
	^ metaports isEmptyOrNil
		ifTrue: [ metaports := self basicPortInstantiation ]
		ifFalse: [ metaports ]