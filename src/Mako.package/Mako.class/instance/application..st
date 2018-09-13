accessing
application: anApplication
	self ports do: [ :p | p application: anApplication ].
	anApplication registerComponent: self. 