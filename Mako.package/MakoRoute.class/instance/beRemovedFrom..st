event-handling
beRemovedFrom: anApplication
	anApplication unsubscribeFromAnnouncement: self.
	from := nil.
	to := nil