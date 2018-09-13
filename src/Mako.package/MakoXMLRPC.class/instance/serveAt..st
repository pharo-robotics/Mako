serve
serveAt: aPort
	running
		ifTrue: [ ^ self error: 'server is already running' ].
	running := true.
	port := aPort.
	XMLRPCService atPort: aPort serve: {(#execute -> {(self -> #execute:)})} asXMLRPCHttpModule at: '/'