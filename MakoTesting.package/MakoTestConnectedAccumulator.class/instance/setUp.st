running
setUp
	super setUp.
	application := MakoApplication new.
	accumulator := MakoAccumulatorComponent forApp: application.
	numberGenerator := MakoNumberGeneratorComponent forApp: application.
	tracker := MakoTrackComponent forApp: application.
	application
		routeFrom: numberGenerator
		port: #outgoing
		to: accumulator
		port: #incoming.
	application
		routeFrom: accumulator
		port: #outgoing
		to: tracker
		port: #incoming