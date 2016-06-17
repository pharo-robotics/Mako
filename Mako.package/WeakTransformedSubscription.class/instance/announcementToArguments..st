as yet unclassified
announcementToArguments: anAnnouncement
	^ transformations collect: [ : t | t value: anAnnouncement ].