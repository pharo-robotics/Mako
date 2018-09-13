accessing
sync 
	request value
		ifNotNil:
			[ :anMXRequestResponse |  
			anMXRequestResponse
				response: (self process: anMXRequestResponse request) ]