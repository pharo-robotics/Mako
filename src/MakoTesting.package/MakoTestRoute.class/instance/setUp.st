as yet unclassified
setUp
	super setUp.
	application := MakoApplication new.
	accumulator := MakoAccumulatorComponent forApp: application.
	numberGenerator := MakoNumberGeneratorComponent forApp: application.
	route := application
		routeFrom: numberGenerator
		port: #outgoing
		to: accumulator
		port: #incoming.
	portFrom := numberGenerator port: #outgoing.
	portTo := accumulator port: #incoming.