testing
isClassSupported: aClass
	^ aClass = type asClass or: [ aClass inheritsFrom: type asClass ]