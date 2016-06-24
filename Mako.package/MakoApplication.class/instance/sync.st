convenience
sync
	| stamp |
	stamp := DateAndTime now.
	^ self components do: [ :c | c doSync: stamp ]