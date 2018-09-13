announcement handling
noteWrittenPortOldValue: anOldValue newValue: aNewValue
	announcer announce: (MakoAnnouncementWrittenPort port: self oldValue: anOldValue newValue: aNewValue)