filein/out
definition
	| aStream |
	self = Mako
		ifTrue: [ ^ super definition ].
	aStream := (String new: 800) writeStream.
	aStream nextPutAll: superclass name.
	aStream
		nextPutAll: ' component: ';
		store: self name.
	aStream
		cr;
		tab;
		nextPutAll: 'ports:';
		nextPutAll: self portsString.
	aStream
		cr;
		tab;
		nextPutAll: 'instanceVariableNames:';
		store: self instanceVariablesString.
	aStream
		cr;
		tab;
		nextPutAll: 'classVariableNames: ';
		store: self classVariablesString.
	aStream
		cr;
		tab;
		nextPutAll: 'category: ';
		store: self category asString.
	^ aStream contents