announcing
deliver: anAnnouncement
	" deliver an announcement to receiver. In case of failure, it will be handled in separate process"

	^ (self handlesAnnouncement: anAnnouncement ) ifTrue: [
		[action valueWithArguments: ( self announcementToArguments: anAnnouncement )] 
			on: UnhandledError fork: [:ex | ex pass ]]