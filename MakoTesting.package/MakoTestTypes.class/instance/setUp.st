as yet unclassified
setUp
	super setUp.
	application := MakoApplication new.
	accumulator := MakoAccumulatorComponent forApp: application.
	tracker := MakoTrackComponent forApp: application.
	application
		routeFrom: accumulator
		port: #outgoing
		to: tracker
		port: #incoming.
	portFrom := accumulator port: #outgoing.
	portTo := tracker port: #incoming.