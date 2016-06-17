accessing
value: aValue
	self checkTypeOfValue: aValue.
	self noteWrittenPortOldValue: value newValue: aValue.
	self basicValue: aValue