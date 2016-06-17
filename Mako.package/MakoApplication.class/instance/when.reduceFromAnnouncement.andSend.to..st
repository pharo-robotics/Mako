events-registering
when: anAnnouncementClass reduceFromAnnouncement: anArrayOfSelectors andSend: aSelector to: anObject
	^ self announcer weak
		when: anAnnouncementClass
		reduceFromAnnouncement: anArrayOfSelectors
		andSend: aSelector
		to: anObject