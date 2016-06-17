accessing
components
	^ routes
		inject: Set new
		into: [ :set :route | 
			set
				add: route componentTo;
				add: route componentFrom;
				yourself ]