accessing
announcer: anAnnouncer
	announcer := anAnnouncer.
	announcer weak when: MakoSyncAnnouncement send: #sync to: component