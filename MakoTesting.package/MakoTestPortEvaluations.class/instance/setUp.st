as yet unclassified
setUp
	super setUp.
	application := MakoApplication new.
	port := (MakoMetaTypedPort named: #incoming for: MakoInputPort) type: #Integer; createPort.
	port announcer: application announcer.
	writtenPort := nil.
	newValue := nil.
	application
		when: MakoAnnouncementWrittenPort
		takeFromAnnouncement: #(#port #newValue)
		andSend: #noteWrittenPort:newValue:
		to: self