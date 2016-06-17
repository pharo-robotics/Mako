as yet unclassified
setUp
	super setUp.
	application := MakoApplication new.
	calculator := MakoMedianCalculator
		forApp: application