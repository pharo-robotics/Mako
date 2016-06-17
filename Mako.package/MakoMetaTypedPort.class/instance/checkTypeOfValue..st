typing
checkTypeOfValue: aValue
	(type isAValidValue: aValue)
		ifFalse:
			[ MakoError
				signal:
					('The class {1} does not applies to the type {1}'
						format:
							{aValue class name.
							type typeName asClass}) ]