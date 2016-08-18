convenience
sync
	| stamp |
	stamp := DateAndTime now.
	^ self components
		do: [ :c | 
			[ c doSync: stamp. ]
				on: Error
				do: [ :err | err logCr. self halt ] ]