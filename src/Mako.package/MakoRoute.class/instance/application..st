accessing
application: aMakoApplication
	(self portFrom isCompatibleWith: self portTo)
		ifTrue:
			[ self portFrom agreeTypesWith: self portTo.
			aMakoApplication
				when: MakoAnnouncementWrittenPort
				takeFromAnnouncement: #(#port #newValue)
				andSend: #noteWrittenPort:newValue:
				to: self ]
		ifFalse: [ MakoError signal: self portFrom asString , ' is not compatible with ' , self portTo asString , ' the route is not valid' ]