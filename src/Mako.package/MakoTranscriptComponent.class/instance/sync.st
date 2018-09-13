convenience
sync
	incoming
		ifNotNil: [ :val | 
			Transcript
				show: val;
				cr ]