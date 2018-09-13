printing
printOn: aStream
	^ ('{1}:{2} >> {3}:{4}'
		format:
			{(from class name).
			fromPort.
			(to class name).
			toPort}) printOn: aStream