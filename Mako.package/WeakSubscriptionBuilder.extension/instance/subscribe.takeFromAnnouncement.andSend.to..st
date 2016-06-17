*Mako
subscribe: anAnnouncementClass takeFromAnnouncement: aSymbolArray andSend: aSymbol to: aReceiver
	^ announcer
		basicSubscribe:
			(WeakTransformedSubscription new
				announcer: announcer;
				announcementClass: anAnnouncementClass;
				valuable: (MessageSend receiver: aReceiver selector: aSymbol);
				transformations: aSymbolArray)