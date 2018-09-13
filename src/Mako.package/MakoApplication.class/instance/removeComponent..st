accessing
removeComponent: aComponent
	| routesToRemove |
	routesToRemove := routes select: [ :r | r isRelatedWith: aComponent ].
	routesToRemove do: [ :r | r beRemovedFrom: self ].
	routes removeAll: routesToRemove.
	aComponent beRemovedFrom: self