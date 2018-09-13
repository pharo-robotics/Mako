as yet unclassified
setUp
	super setUp.
	application := MakoApplication new.
	accumulator := MakoAccumulatorComponent forApp: application