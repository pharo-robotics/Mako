creation
routeFrom: aMakoComponent port: fromPort to: anOtherMakoComponent port: toPort
	| route |
	route := MakoRoute
		from: aMakoComponent
		port: fromPort
		to: anOtherMakoComponent
		port: toPort.
	self registerRoute: route.
	^ route