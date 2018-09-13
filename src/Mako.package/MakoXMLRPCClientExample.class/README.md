Basic example that ilustrates how to use implement a client for MakoXMLRPC component. 

" TaskIT2 is needed to run this example "
	application := MakoApplication new.
	xmlrpc := MakoXMLRPC  forApp: application.
	xclient := MakoXMLRPCClientExample forApp: application.
	
	application
		routeFrom: xmlrpc
		port: #request
		to: xclient
		port: #request. 
	xmlrpc serveAt: 9999.
	xmlrpc stop.
	application configure.
	a:=true.
	ticker := [[a] whileTrue: [ application tick. 1 second wait ]] runAsLoopingService.
	ticker cancel.