typing
checkType: aType
	(meta isClassSupported: aType)
		ifFalse: [ 
			MakoError
				signal:
					('The class {1} does not applies to the type {1}'
						format:
							{(aType name).
							(meta type name)}) ]